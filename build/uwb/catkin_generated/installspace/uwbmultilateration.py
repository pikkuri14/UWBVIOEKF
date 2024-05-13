#!/usr/bin/env python3



import rospy
from gtec_msgs.msg import Ranging
from nav_msgs.msg import Odometry

from scipy.optimize import minimize
import numpy as np
import localization as lx

from multilateration import Engine
from math import sqrt



class Multi_node:
    def rangingCallback(self, msg):
            if msg.anchorId == 1 : self.msg_ranging[0] = msg.range
            if msg.anchorId == 2 : self.msg_ranging[1] = msg.range
            if msg.anchorId == 3 : self.msg_ranging[2] = msg.range
            if msg.anchorId == 4 : self.msg_ranging[3] = msg.range
            
    def __init__(self):

        self.msg = Odometry()

        #anchor 0,1,2,3
        self.msg_ranging = [0,0,0,0]
        self.anchor_pos = [[5,0,5],[-5,0,5],[0,5,5],[0,-5,5]]


        rospy.init_node('listener', anonymous=True)
        rospy.Subscriber('/gtec/toa/ranging', Ranging, self.rangingCallback)
        # rospy.Subscriber('/gtec/toa/anchors', MarkerArray, self.anchorsCallback)
        self.pub = rospy.Publisher('odom_multi', Odometry, queue_size=1000)

    
        

        self.E = Engine(goal=[None, None, None])
        self.E.add_anchor('anchore_A',(5,0,5))
        self.E.add_anchor('anchore_B',(-5,0,5))
        self.E.add_anchor('anchore_C',(0,5,5))
        self.E.add_anchor('anchore_D',(0,-5,5))

    def main(self):
        rate = rospy.Rate(30)

        while not rospy.is_shutdown():
            self.msg.pose.pose.position.z = 3.0
            self.msg.pose.pose.position.x = 1.0
            self.msg.pose.pose.position.y = 2.0
            self.pub.publish(self.msg)



            self.E.add_measure('anchore_A',5*sqrt(2))
            self.E.add_measure('anchore_B',5*sqrt(2))
            self.E.add_measure('anchore_C',5*sqrt(2))
            self.E.add_measure('anchore_D',5*sqrt(2))

            if self.msg_ranging[0] != 0:
                # self.P.solve()
                rospy.loginfo(self.E.solve())

            rate.sleep()

    # def gps_solve(self, distances_to_station, stations_coordinates):
    #     def error(x, c, r):
    #         return sum([(np.linalg.norm(x - c[i]) - r[i]) ** 2 for i in range(len(c))])

    #     l = len(stations_coordinates)
    #     S = sum(distances_to_station)
    #     # compute weight vector for initial guess
    #     W = [((l - 1) * S) / (S - w) for w in distances_to_station]
    #     # get initial guess of point location
    #     x0 = sum([W[i] * stations_coordinates[i] for i in range(l)])
    #     # optimize distance from signal origin to border of spheres
    #     return minimize(error, x0, args=(stations_coordinates, distances_to_station), method='Nelder-Mead').x

if __name__ == '__main__':
    try:
        node = Multi_node()
        node.main()
    except rospy.ROSInterruptException:
        pass
