// Generated by gencpp from file behaviour/cleanreq.msg
// DO NOT EDIT!


#ifndef BEHAVIOUR_MESSAGE_CLEANREQ_H
#define BEHAVIOUR_MESSAGE_CLEANREQ_H

#include <ros/service_traits.h>


#include <behaviour/cleanreqRequest.h>
#include <behaviour/cleanreqResponse.h>


namespace behaviour
{

struct cleanreq
{

typedef cleanreqRequest Request;
typedef cleanreqResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cleanreq
} // namespace behaviour


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::behaviour::cleanreq > {
  static const char* value()
  {
    return "a4a19e72d17da6e4ff5c0b9f7a7ca609";
  }

  static const char* value(const ::behaviour::cleanreq&) { return value(); }
};

template<>
struct DataType< ::behaviour::cleanreq > {
  static const char* value()
  {
    return "behaviour/cleanreq";
  }

  static const char* value(const ::behaviour::cleanreq&) { return value(); }
};


// service_traits::MD5Sum< ::behaviour::cleanreqRequest> should match
// service_traits::MD5Sum< ::behaviour::cleanreq >
template<>
struct MD5Sum< ::behaviour::cleanreqRequest>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::cleanreq >::value();
  }
  static const char* value(const ::behaviour::cleanreqRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::cleanreqRequest> should match
// service_traits::DataType< ::behaviour::cleanreq >
template<>
struct DataType< ::behaviour::cleanreqRequest>
{
  static const char* value()
  {
    return DataType< ::behaviour::cleanreq >::value();
  }
  static const char* value(const ::behaviour::cleanreqRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::behaviour::cleanreqResponse> should match
// service_traits::MD5Sum< ::behaviour::cleanreq >
template<>
struct MD5Sum< ::behaviour::cleanreqResponse>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::cleanreq >::value();
  }
  static const char* value(const ::behaviour::cleanreqResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::cleanreqResponse> should match
// service_traits::DataType< ::behaviour::cleanreq >
template<>
struct DataType< ::behaviour::cleanreqResponse>
{
  static const char* value()
  {
    return DataType< ::behaviour::cleanreq >::value();
  }
  static const char* value(const ::behaviour::cleanreqResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEHAVIOUR_MESSAGE_CLEANREQ_H
