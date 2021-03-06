// Generated by gencpp from file elfin_robot_msgs/SetString.msg
// DO NOT EDIT!


#ifndef ELFIN_ROBOT_MSGS_MESSAGE_SETSTRING_H
#define ELFIN_ROBOT_MSGS_MESSAGE_SETSTRING_H

#include <ros/service_traits.h>


#include <elfin_robot_msgs/SetStringRequest.h>
#include <elfin_robot_msgs/SetStringResponse.h>


namespace elfin_robot_msgs
{

struct SetString
{

typedef SetStringRequest Request;
typedef SetStringResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetString
} // namespace elfin_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::elfin_robot_msgs::SetString > {
  static const char* value()
  {
    return "546971982e3fbbd5a41e60fb6432e357";
  }

  static const char* value(const ::elfin_robot_msgs::SetString&) { return value(); }
};

template<>
struct DataType< ::elfin_robot_msgs::SetString > {
  static const char* value()
  {
    return "elfin_robot_msgs/SetString";
  }

  static const char* value(const ::elfin_robot_msgs::SetString&) { return value(); }
};


// service_traits::MD5Sum< ::elfin_robot_msgs::SetStringRequest> should match
// service_traits::MD5Sum< ::elfin_robot_msgs::SetString >
template<>
struct MD5Sum< ::elfin_robot_msgs::SetStringRequest>
{
  static const char* value()
  {
    return MD5Sum< ::elfin_robot_msgs::SetString >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::elfin_robot_msgs::SetStringRequest> should match
// service_traits::DataType< ::elfin_robot_msgs::SetString >
template<>
struct DataType< ::elfin_robot_msgs::SetStringRequest>
{
  static const char* value()
  {
    return DataType< ::elfin_robot_msgs::SetString >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetStringRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::elfin_robot_msgs::SetStringResponse> should match
// service_traits::MD5Sum< ::elfin_robot_msgs::SetString >
template<>
struct MD5Sum< ::elfin_robot_msgs::SetStringResponse>
{
  static const char* value()
  {
    return MD5Sum< ::elfin_robot_msgs::SetString >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetStringResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::elfin_robot_msgs::SetStringResponse> should match
// service_traits::DataType< ::elfin_robot_msgs::SetString >
template<>
struct DataType< ::elfin_robot_msgs::SetStringResponse>
{
  static const char* value()
  {
    return DataType< ::elfin_robot_msgs::SetString >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetStringResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ELFIN_ROBOT_MSGS_MESSAGE_SETSTRING_H
