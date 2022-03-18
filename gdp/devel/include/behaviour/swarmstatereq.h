// Generated by gencpp from file behaviour/swarmstatereq.msg
// DO NOT EDIT!


#ifndef BEHAVIOUR_MESSAGE_SWARMSTATEREQ_H
#define BEHAVIOUR_MESSAGE_SWARMSTATEREQ_H

#include <ros/service_traits.h>


#include <behaviour/swarmstatereqRequest.h>
#include <behaviour/swarmstatereqResponse.h>


namespace behaviour
{

struct swarmstatereq
{

typedef swarmstatereqRequest Request;
typedef swarmstatereqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct swarmstatereq
} // namespace behaviour


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::behaviour::swarmstatereq > {
  static const char* value()
  {
    return "dcdc0995a6c9d0a85436f9cd484b8d9c";
  }

  static const char* value(const ::behaviour::swarmstatereq&) { return value(); }
};

template<>
struct DataType< ::behaviour::swarmstatereq > {
  static const char* value()
  {
    return "behaviour/swarmstatereq";
  }

  static const char* value(const ::behaviour::swarmstatereq&) { return value(); }
};


// service_traits::MD5Sum< ::behaviour::swarmstatereqRequest> should match
// service_traits::MD5Sum< ::behaviour::swarmstatereq >
template<>
struct MD5Sum< ::behaviour::swarmstatereqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::swarmstatereq >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::swarmstatereqRequest> should match
// service_traits::DataType< ::behaviour::swarmstatereq >
template<>
struct DataType< ::behaviour::swarmstatereqRequest>
{
  static const char* value()
  {
    return DataType< ::behaviour::swarmstatereq >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::behaviour::swarmstatereqResponse> should match
// service_traits::MD5Sum< ::behaviour::swarmstatereq >
template<>
struct MD5Sum< ::behaviour::swarmstatereqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::swarmstatereq >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::swarmstatereqResponse> should match
// service_traits::DataType< ::behaviour::swarmstatereq >
template<>
struct DataType< ::behaviour::swarmstatereqResponse>
{
  static const char* value()
  {
    return DataType< ::behaviour::swarmstatereq >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEHAVIOUR_MESSAGE_SWARMSTATEREQ_H
