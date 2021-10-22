// Generated by gencpp from file elfin_robot_msgs/SetInt16.msg
// DO NOT EDIT!


#ifndef ELFIN_ROBOT_MSGS_MESSAGE_SETINT16_H
#define ELFIN_ROBOT_MSGS_MESSAGE_SETINT16_H

#include <ros/service_traits.h>


#include <elfin_robot_msgs/SetInt16Request.h>
#include <elfin_robot_msgs/SetInt16Response.h>


namespace elfin_robot_msgs
{

struct SetInt16
{

typedef SetInt16Request Request;
typedef SetInt16Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SetInt16
} // namespace elfin_robot_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::elfin_robot_msgs::SetInt16 > {
  static const char* value()
  {
    return "04ca3f7f71c32c01ec29368d8fc87b04";
  }

  static const char* value(const ::elfin_robot_msgs::SetInt16&) { return value(); }
};

template<>
struct DataType< ::elfin_robot_msgs::SetInt16 > {
  static const char* value()
  {
    return "elfin_robot_msgs/SetInt16";
  }

  static const char* value(const ::elfin_robot_msgs::SetInt16&) { return value(); }
};


// service_traits::MD5Sum< ::elfin_robot_msgs::SetInt16Request> should match
// service_traits::MD5Sum< ::elfin_robot_msgs::SetInt16 >
template<>
struct MD5Sum< ::elfin_robot_msgs::SetInt16Request>
{
  static const char* value()
  {
    return MD5Sum< ::elfin_robot_msgs::SetInt16 >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetInt16Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::elfin_robot_msgs::SetInt16Request> should match
// service_traits::DataType< ::elfin_robot_msgs::SetInt16 >
template<>
struct DataType< ::elfin_robot_msgs::SetInt16Request>
{
  static const char* value()
  {
    return DataType< ::elfin_robot_msgs::SetInt16 >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetInt16Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::elfin_robot_msgs::SetInt16Response> should match
// service_traits::MD5Sum< ::elfin_robot_msgs::SetInt16 >
template<>
struct MD5Sum< ::elfin_robot_msgs::SetInt16Response>
{
  static const char* value()
  {
    return MD5Sum< ::elfin_robot_msgs::SetInt16 >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetInt16Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::elfin_robot_msgs::SetInt16Response> should match
// service_traits::DataType< ::elfin_robot_msgs::SetInt16 >
template<>
struct DataType< ::elfin_robot_msgs::SetInt16Response>
{
  static const char* value()
  {
    return DataType< ::elfin_robot_msgs::SetInt16 >::value();
  }
  static const char* value(const ::elfin_robot_msgs::SetInt16Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ELFIN_ROBOT_MSGS_MESSAGE_SETINT16_H
