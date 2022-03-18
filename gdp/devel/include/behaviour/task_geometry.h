// Generated by gencpp from file behaviour/task_geometry.msg
// DO NOT EDIT!


#ifndef BEHAVIOUR_MESSAGE_TASK_GEOMETRY_H
#define BEHAVIOUR_MESSAGE_TASK_GEOMETRY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace behaviour
{
template <class ContainerAllocator>
struct task_geometry_
{
  typedef task_geometry_<ContainerAllocator> Type;

  task_geometry_()
    : header()
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
    }
  task_geometry_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef float _alt_type;
  _alt_type alt;





  typedef boost::shared_ptr< ::behaviour::task_geometry_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::behaviour::task_geometry_<ContainerAllocator> const> ConstPtr;

}; // struct task_geometry_

typedef ::behaviour::task_geometry_<std::allocator<void> > task_geometry;

typedef boost::shared_ptr< ::behaviour::task_geometry > task_geometryPtr;
typedef boost::shared_ptr< ::behaviour::task_geometry const> task_geometryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::behaviour::task_geometry_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::behaviour::task_geometry_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::behaviour::task_geometry_<ContainerAllocator1> & lhs, const ::behaviour::task_geometry_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.alt == rhs.alt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::behaviour::task_geometry_<ContainerAllocator1> & lhs, const ::behaviour::task_geometry_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace behaviour

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::behaviour::task_geometry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::behaviour::task_geometry_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::behaviour::task_geometry_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::behaviour::task_geometry_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::behaviour::task_geometry_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::behaviour::task_geometry_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::behaviour::task_geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "923783ec1267801cfa1e2a07f76c5423";
  }

  static const char* value(const ::behaviour::task_geometry_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x923783ec1267801cULL;
  static const uint64_t static_value2 = 0xfa1e2a07f76c5423ULL;
};

template<class ContainerAllocator>
struct DataType< ::behaviour::task_geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "behaviour/task_geometry";
  }

  static const char* value(const ::behaviour::task_geometry_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::behaviour::task_geometry_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"float64 lat\n"
"float64 lon\n"
"float32 alt\n"
"\n"
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

  static const char* value(const ::behaviour::task_geometry_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::behaviour::task_geometry_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.alt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct task_geometry_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::behaviour::task_geometry_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::behaviour::task_geometry_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "alt: ";
    Printer<float>::stream(s, indent + "  ", v.alt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEHAVIOUR_MESSAGE_TASK_GEOMETRY_H
