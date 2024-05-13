
(cl:in-package :asdf)

(defsystem "gtec_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DWRanging" :depends-on ("_package_DWRanging"))
    (:file "_package_DWRanging" :depends-on ("_package"))
    (:file "DoorCounterEvent" :depends-on ("_package_DoorCounterEvent"))
    (:file "_package_DoorCounterEvent" :depends-on ("_package"))
    (:file "ESP32S2FTMFrame" :depends-on ("_package_ESP32S2FTMFrame"))
    (:file "_package_ESP32S2FTMFrame" :depends-on ("_package"))
    (:file "ESP32S2FTMRanging" :depends-on ("_package_ESP32S2FTMRanging"))
    (:file "_package_ESP32S2FTMRanging" :depends-on ("_package"))
    (:file "ESP32S2FTMRangingExtra" :depends-on ("_package_ESP32S2FTMRangingExtra"))
    (:file "_package_ESP32S2FTMRangingExtra" :depends-on ("_package"))
    (:file "GenericRanging" :depends-on ("_package_GenericRanging"))
    (:file "_package_GenericRanging" :depends-on ("_package"))
    (:file "PozyxRanging" :depends-on ("_package_PozyxRanging"))
    (:file "_package_PozyxRanging" :depends-on ("_package"))
    (:file "PozyxRangingWithCir" :depends-on ("_package_PozyxRangingWithCir"))
    (:file "_package_PozyxRangingWithCir" :depends-on ("_package"))
    (:file "RadarCube" :depends-on ("_package_RadarCube"))
    (:file "_package_RadarCube" :depends-on ("_package"))
    (:file "RadarFusedPointStamped" :depends-on ("_package_RadarFusedPointStamped"))
    (:file "_package_RadarFusedPointStamped" :depends-on ("_package"))
    (:file "RadarRangeAzimuth" :depends-on ("_package_RadarRangeAzimuth"))
    (:file "_package_RadarRangeAzimuth" :depends-on ("_package"))
    (:file "RadarRangeDoppler" :depends-on ("_package_RadarRangeDoppler"))
    (:file "_package_RadarRangeDoppler" :depends-on ("_package"))
    (:file "Ranging" :depends-on ("_package_Ranging"))
    (:file "_package_Ranging" :depends-on ("_package"))
    (:file "RangingDiff" :depends-on ("_package_RangingDiff"))
    (:file "_package_RangingDiff" :depends-on ("_package"))
    (:file "UWBRanging" :depends-on ("_package_UWBRanging"))
    (:file "_package_UWBRanging" :depends-on ("_package"))
    (:file "ZoneOccupancy" :depends-on ("_package_ZoneOccupancy"))
    (:file "_package_ZoneOccupancy" :depends-on ("_package"))
  ))