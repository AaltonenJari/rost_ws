// Generated by gencpp from file elfin_robot_msgs/ElfinIODWriteRequest.msg
// DO NOT EDIT!


#ifndef ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODWRITEREQUEST_H
#define ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODWRITEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace elfin_robot_msgs
{
template <class ContainerAllocator>
struct ElfinIODWriteRequest_
{
  typedef ElfinIODWriteRequest_<ContainerAllocator> Type;

  ElfinIODWriteRequest_()
    : digital_output(0)  {
    }
  ElfinIODWriteRequest_(const ContainerAllocator& _alloc)
    : digital_output(0)  {
  (void)_alloc;
    }



   typedef int32_t _digital_output_type;
  _digital_output_type digital_output;





  typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ElfinIODWriteRequest_

typedef ::elfin_robot_msgs::ElfinIODWriteRequest_<std::allocator<void> > ElfinIODWriteRequest;

typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODWriteRequest > ElfinIODWriteRequestPtr;
typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODWriteRequest const> ElfinIODWriteRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator1> & lhs, const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator2> & rhs)
{
  return lhs.digital_output == rhs.digital_output;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator1> & lhs, const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace elfin_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3a04cc47addbf52d91fd317bd3f71fcc";
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3a04cc47addbf52dULL;
  static const uint64_t static_value2 = 0x91fd317bd3f71fccULL;
};

template<class ContainerAllocator>
struct DataType< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "elfin_robot_msgs/ElfinIODWriteRequest";
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 digital_output\n"
;
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.digital_output);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElfinIODWriteRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::elfin_robot_msgs::ElfinIODWriteRequest_<ContainerAllocator>& v)
  {
    s << indent << "digital_output: ";
    Printer<int32_t>::stream(s, indent + "  ", v.digital_output);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODWRITEREQUEST_H
