// Generated by gencpp from file elfin_robot_msgs/ElfinIODReadResponse.msg
// DO NOT EDIT!


#ifndef ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODREADRESPONSE_H
#define ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODREADRESPONSE_H


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
struct ElfinIODReadResponse_
{
  typedef ElfinIODReadResponse_<ContainerAllocator> Type;

  ElfinIODReadResponse_()
    : digital_input(0)  {
    }
  ElfinIODReadResponse_(const ContainerAllocator& _alloc)
    : digital_input(0)  {
  (void)_alloc;
    }



   typedef int32_t _digital_input_type;
  _digital_input_type digital_input;





  typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ElfinIODReadResponse_

typedef ::elfin_robot_msgs::ElfinIODReadResponse_<std::allocator<void> > ElfinIODReadResponse;

typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODReadResponse > ElfinIODReadResponsePtr;
typedef boost::shared_ptr< ::elfin_robot_msgs::ElfinIODReadResponse const> ElfinIODReadResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator1> & lhs, const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator2> & rhs)
{
  return lhs.digital_input == rhs.digital_input;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator1> & lhs, const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace elfin_robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ce548173495af8ebd443f618454f7926";
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xce548173495af8ebULL;
  static const uint64_t static_value2 = 0xd443f618454f7926ULL;
};

template<class ContainerAllocator>
struct DataType< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "elfin_robot_msgs/ElfinIODReadResponse";
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 digital_input\n"
"\n"
;
  }

  static const char* value(const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.digital_input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElfinIODReadResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::elfin_robot_msgs::ElfinIODReadResponse_<ContainerAllocator>& v)
  {
    s << indent << "digital_input: ";
    Printer<int32_t>::stream(s, indent + "  ", v.digital_input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ELFIN_ROBOT_MSGS_MESSAGE_ELFINIODREADRESPONSE_H