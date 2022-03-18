// Generated by gencpp from file behaviour/swarmstatereqRESPONSE.msg
// DO NOT EDIT!


#ifndef BEHAVIOUR_MESSAGE_SWARMSTATEREQRESPONSE_H
#define BEHAVIOUR_MESSAGE_SWARMSTATEREQRESPONSE_H

#include <ros/service_traits.h>


#include <behaviour/swarmstatereqRESPONSERequest.h>
#include <behaviour/swarmstatereqRESPONSEResponse.h>


namespace behaviour
{

struct swarmstatereqRESPONSE
{

typedef swarmstatereqRESPONSERequest Request;
typedef swarmstatereqRESPONSEResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct swarmstatereqRESPONSE
} // namespace behaviour


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::behaviour::swarmstatereqRESPONSE > {
  static const char* value()
  {
    return "33a7566a467e8cd83585fe87304be866";
  }

  static const char* value(const ::behaviour::swarmstatereqRESPONSE&) { return value(); }
};

template<>
struct DataType< ::behaviour::swarmstatereqRESPONSE > {
  static const char* value()
  {
    return "behaviour/swarmstatereqRESPONSE";
  }

  static const char* value(const ::behaviour::swarmstatereqRESPONSE&) { return value(); }
};


// service_traits::MD5Sum< ::behaviour::swarmstatereqRESPONSERequest> should match
// service_traits::MD5Sum< ::behaviour::swarmstatereqRESPONSE >
template<>
struct MD5Sum< ::behaviour::swarmstatereqRESPONSERequest>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::swarmstatereqRESPONSE >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRESPONSERequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::swarmstatereqRESPONSERequest> should match
// service_traits::DataType< ::behaviour::swarmstatereqRESPONSE >
template<>
struct DataType< ::behaviour::swarmstatereqRESPONSERequest>
{
  static const char* value()
  {
    return DataType< ::behaviour::swarmstatereqRESPONSE >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRESPONSERequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::behaviour::swarmstatereqRESPONSEResponse> should match
// service_traits::MD5Sum< ::behaviour::swarmstatereqRESPONSE >
template<>
struct MD5Sum< ::behaviour::swarmstatereqRESPONSEResponse>
{
  static const char* value()
  {
    return MD5Sum< ::behaviour::swarmstatereqRESPONSE >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRESPONSEResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::behaviour::swarmstatereqRESPONSEResponse> should match
// service_traits::DataType< ::behaviour::swarmstatereqRESPONSE >
template<>
struct DataType< ::behaviour::swarmstatereqRESPONSEResponse>
{
  static const char* value()
  {
    return DataType< ::behaviour::swarmstatereqRESPONSE >::value();
  }
  static const char* value(const ::behaviour::swarmstatereqRESPONSEResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BEHAVIOUR_MESSAGE_SWARMSTATEREQRESPONSE_H
