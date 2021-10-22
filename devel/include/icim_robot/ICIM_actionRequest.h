// Generated by gencpp from file icim_robot/ICIM_actionRequest.msg
// DO NOT EDIT!


#ifndef ICIM_ROBOT_MESSAGE_ICIM_ACTIONREQUEST_H
#define ICIM_ROBOT_MESSAGE_ICIM_ACTIONREQUEST_H


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
struct ICIM_actionRequest_
{
  typedef ICIM_actionRequest_<ContainerAllocator> Type;

  ICIM_actionRequest_()
    : index(0)
    , pickup(false)
    , place(false)
    , home(false)  {
    }
  ICIM_actionRequest_(const ContainerAllocator& _alloc)
    : index(0)
    , pickup(false)
    , place(false)
    , home(false)  {
  (void)_alloc;
    }



   typedef uint8_t _index_type;
  _index_type index;

   typedef uint8_t _pickup_type;
  _pickup_type pickup;

   typedef uint8_t _place_type;
  _place_type place;

   typedef uint8_t _home_type;
  _home_type home;





  typedef boost::shared_ptr< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ICIM_actionRequest_

typedef ::icim_robot::ICIM_actionRequest_<std::allocator<void> > ICIM_actionRequest;

typedef boost::shared_ptr< ::icim_robot::ICIM_actionRequest > ICIM_actionRequestPtr;
typedef boost::shared_ptr< ::icim_robot::ICIM_actionRequest const> ICIM_actionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::icim_robot::ICIM_actionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::icim_robot::ICIM_actionRequest_<ContainerAllocator1> & lhs, const ::icim_robot::ICIM_actionRequest_<ContainerAllocator2> & rhs)
{
  return lhs.index == rhs.index &&
    lhs.pickup == rhs.pickup &&
    lhs.place == rhs.place &&
    lhs.home == rhs.home;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::icim_robot::ICIM_actionRequest_<ContainerAllocator1> & lhs, const ::icim_robot::ICIM_actionRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace icim_robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "645a960607d26fe459ebdf53d78687f7";
  }

  static const char* value(const ::icim_robot::ICIM_actionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x645a960607d26fe4ULL;
  static const uint64_t static_value2 = 0x59ebdf53d78687f7ULL;
};

template<class ContainerAllocator>
struct DataType< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "icim_robot/ICIM_actionRequest";
  }

  static const char* value(const ::icim_robot::ICIM_actionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 index \n"
"bool pickup\n"
"bool place\n"
"bool home\n"
;
  }

  static const char* value(const ::icim_robot::ICIM_actionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.pickup);
      stream.next(m.place);
      stream.next(m.home);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ICIM_actionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::icim_robot::ICIM_actionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::icim_robot::ICIM_actionRequest_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.index);
    s << indent << "pickup: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.pickup);
    s << indent << "place: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.place);
    s << indent << "home: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.home);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ICIM_ROBOT_MESSAGE_ICIM_ACTIONREQUEST_H