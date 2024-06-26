; Auto-generated. Do not edit!


(cl:in-package gtec_msgs-msg)


;//! \htmlinclude ZoneOccupancy.msg.html

(cl:defclass <ZoneOccupancy> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (zoneId
    :reader zoneId
    :initarg :zoneId
    :type cl:string
    :initform "")
   (targetIds
    :reader targetIds
    :initarg :targetIds
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ZoneOccupancy (<ZoneOccupancy>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ZoneOccupancy>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ZoneOccupancy)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gtec_msgs-msg:<ZoneOccupancy> is deprecated: use gtec_msgs-msg:ZoneOccupancy instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ZoneOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gtec_msgs-msg:header-val is deprecated.  Use gtec_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'zoneId-val :lambda-list '(m))
(cl:defmethod zoneId-val ((m <ZoneOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gtec_msgs-msg:zoneId-val is deprecated.  Use gtec_msgs-msg:zoneId instead.")
  (zoneId m))

(cl:ensure-generic-function 'targetIds-val :lambda-list '(m))
(cl:defmethod targetIds-val ((m <ZoneOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gtec_msgs-msg:targetIds-val is deprecated.  Use gtec_msgs-msg:targetIds instead.")
  (targetIds m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ZoneOccupancy>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gtec_msgs-msg:count-val is deprecated.  Use gtec_msgs-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ZoneOccupancy>) ostream)
  "Serializes a message object of type '<ZoneOccupancy>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zoneId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zoneId))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targetIds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'targetIds))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ZoneOccupancy>) istream)
  "Deserializes a message object of type '<ZoneOccupancy>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zoneId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zoneId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targetIds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targetIds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ZoneOccupancy>)))
  "Returns string type for a message object of type '<ZoneOccupancy>"
  "gtec_msgs/ZoneOccupancy")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ZoneOccupancy)))
  "Returns string type for a message object of type 'ZoneOccupancy"
  "gtec_msgs/ZoneOccupancy")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ZoneOccupancy>)))
  "Returns md5sum for a message object of type '<ZoneOccupancy>"
  "ca4a300ff4c235be9feab5048bc4c41f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ZoneOccupancy)))
  "Returns md5sum for a message object of type 'ZoneOccupancy"
  "ca4a300ff4c235be9feab5048bc4c41f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ZoneOccupancy>)))
  "Returns full string definition for message of type '<ZoneOccupancy>"
  (cl:format cl:nil "Header header~%string zoneId~%int16[] targetIds~%int16 count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ZoneOccupancy)))
  "Returns full string definition for message of type 'ZoneOccupancy"
  (cl:format cl:nil "Header header~%string zoneId~%int16[] targetIds~%int16 count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ZoneOccupancy>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'zoneId))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targetIds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ZoneOccupancy>))
  "Converts a ROS message object to a list"
  (cl:list 'ZoneOccupancy
    (cl:cons ':header (header msg))
    (cl:cons ':zoneId (zoneId msg))
    (cl:cons ':targetIds (targetIds msg))
    (cl:cons ':count (count msg))
))
