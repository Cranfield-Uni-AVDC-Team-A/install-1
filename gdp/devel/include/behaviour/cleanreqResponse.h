// Generated by gencpp from file behaviour/cleanreqResponse.msg
// DO NOT EDIT!


#ifndef BEHAVIOUR_MESSAGE_CLEANREQRESPONSE_H
#define BEHAVIOUR_MESSAGE_CLEANREQRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace behaviour
{
template <class ContainerAllocator>
struct cleanreqResponse_
{
  typedef cleanreqResponse_<ContainerAllocator> Type;

  cleanreqResponse_()
    : a(0)  {
    }
  cleanreqResponse_(const ContainerAllocator& _alloc)
    : a(0)  {
  (void)_alloc;
    }



   typedef int8_t _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::behaviour::cleanreqResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::behaviour::cleanreqResponse_<ContainerAllocator> const> ConstPtr;

}; // struct cleanreqResponse_

typedef ::behaviour::cleanreqResponse_<std::allocator<void> > cleanreqResponse;

typedef boost::shared_ptr< ::behaviour::cleanreqResponse > cleanreqResponsePtr;
typedef boost::shared_ptr< ::behaviour::cleanreqResponse const> cleanreqResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::behaviour::cleanreqResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::behaviour::cleanreqResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::behaviour::cleanreqResponse_<ContainerAllocator1> & lhs, const ::behaviour::cleanreqResponse_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::behaviour::cleanreqResponse_<ContainerAllocator1> & lhs, const ::behaviour::cleanreqResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace behaviour

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::behaviour::cleanreqResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::behaviour::cleanreqResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::behaviour::cleanreqResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::behaviour::cleanreqResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::behaviour::cleanreqResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::behaviour::cleanreqResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::behaviour::cleanreqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4eec2979cc688371cc0e7f01aea37ad1";
  }

  static const char* value(const ::behaviour::cleanreqResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4eec2979cc688371ULL;
  static const uint64_t static_value2 = 0xcc0e7f01aea37ad1ULL;
};

template<class ContainerAllocator>
struct DataType< ::behaviour::cleanreqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "behaviour/cleanreqResponse";
  }

  static const char* value(const ::behaviour::cleanreqResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::behaviour::cleanreqResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 a\n"
;
  }

  static const char* value(const ::behaviour::cleanreqResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::behaviour::cleanreqResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct cleanreqResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::behaviour::cleanreqResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::behaviour::cleanreqResponse_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int8_t>::stream(s, indent + "  ", v.a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEHAVIOUR_MESSAGE_CLEANREQRESPONSE_H
