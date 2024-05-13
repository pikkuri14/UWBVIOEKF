// Generated by gencpp from file gtec_msgs/DoorCounterEvent.msg
// DO NOT EDIT!


#ifndef GTEC_MSGS_MESSAGE_DOORCOUNTEREVENT_H
#define GTEC_MSGS_MESSAGE_DOORCOUNTEREVENT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace gtec_msgs
{
template <class ContainerAllocator>
struct DoorCounterEvent_
{
  typedef DoorCounterEvent_<ContainerAllocator> Type;

  DoorCounterEvent_()
    : header()
    , lth(0)
    , htl(0)  {
    }
  DoorCounterEvent_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lth(0)
    , htl(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _lth_type;
  _lth_type lth;

   typedef int16_t _htl_type;
  _htl_type htl;





  typedef boost::shared_ptr< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> const> ConstPtr;

}; // struct DoorCounterEvent_

typedef ::gtec_msgs::DoorCounterEvent_<std::allocator<void> > DoorCounterEvent;

typedef boost::shared_ptr< ::gtec_msgs::DoorCounterEvent > DoorCounterEventPtr;
typedef boost::shared_ptr< ::gtec_msgs::DoorCounterEvent const> DoorCounterEventConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator1> & lhs, const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.lth == rhs.lth &&
    lhs.htl == rhs.htl;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator1> & lhs, const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gtec_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8e9928bb0cb3ba644932e73b3a112f9c";
  }

  static const char* value(const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8e9928bb0cb3ba64ULL;
  static const uint64_t static_value2 = 0x4932e73b3a112f9cULL;
};

template<class ContainerAllocator>
struct DataType< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gtec_msgs/DoorCounterEvent";
  }

  static const char* value(const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"int16 lth\n"
"int16 htl\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lth);
      stream.next(m.htl);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoorCounterEvent_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gtec_msgs::DoorCounterEvent_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gtec_msgs::DoorCounterEvent_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lth: ";
    Printer<int16_t>::stream(s, indent + "  ", v.lth);
    s << indent << "htl: ";
    Printer<int16_t>::stream(s, indent + "  ", v.htl);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GTEC_MSGS_MESSAGE_DOORCOUNTEREVENT_H
