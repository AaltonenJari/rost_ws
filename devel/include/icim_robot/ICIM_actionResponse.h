// Generated by gencpp from file icim_robot/ICIM_actionResponse.msg
// DO NOT EDIT!


#ifndef ICIM_ROBOT_MESSAGE_ICIM_ACTIONRESPONSE_H
#define ICIM_ROBOT_MESSAGE_ICIM_ACTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace icim_robot
{
template <class ContainerAllocator>
struct ICIM_actionResponse_
{
  typedef ICIM_actionResponse_<ContainerAllocator> Type;

  ICIM_actionResponse_()
    : success(false)
    , status_message()  {
    }
  ICIM_actionResponse_(const ContainerAllocator& _alloc)
    : success(false)
    , status_message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_message_type;
  _status_message_type status_message;





  typedef boost::shared_ptr< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ICIM_actionResponse_

typedef ::icim_robot::ICIM_actionResponse_<std::allocator<void> > ICIM_actionResponse;

typedef boost::shared_ptr< ::icim_robot::ICIM_actionResponse > ICIM_actionResponsePtr;
typedef boost::shared_ptr< ::icim_robot::ICIM_actionResponse const> ICIM_actionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::icim_robot::ICIM_actionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::icim_robot::ICIM_actionResponse_<ContainerAllocator1> & lhs, const ::icim_robot::ICIM_actionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success &&
    lhs.status_message == rhs.status_message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::icim_robot::ICIM_actionResponse_<ContainerAllocator1> & lhs, const ::icim_robot::ICIM_actionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace icim_robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ec6f3eff0161f4257b808b12bc830c2";
  }

  static const char* value(const ::icim_robot::ICIM_actionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ec6f3eff0161f42ULL;
  static const uint64_t static_value2 = 0x57b808b12bc830c2ULL;
};

template<class ContainerAllocator>
struct DataType< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "icim_robot/ICIM_actionResponse";
  }

  static const char* value(const ::icim_robot::ICIM_actionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"string status_message\n"
"\n"
;
  }

  static const char* value(const ::icim_robot::ICIM_actionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.status_message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ICIM_actionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::icim_robot::ICIM_actionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::icim_robot::ICIM_actionResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "status_message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status_message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ICIM_ROBOT_MESSAGE_ICIM_ACTIONRESPONSE_H