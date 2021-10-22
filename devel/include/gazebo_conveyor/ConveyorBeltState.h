// Generated by gencpp from file gazebo_conveyor/ConveyorBeltState.msg
// DO NOT EDIT!


#ifndef GAZEBO_CONVEYOR_MESSAGE_CONVEYORBELTSTATE_H
#define GAZEBO_CONVEYOR_MESSAGE_CONVEYORBELTSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gazebo_conveyor
{
template <class ContainerAllocator>
struct ConveyorBeltState_
{
  typedef ConveyorBeltState_<ContainerAllocator> Type;

  ConveyorBeltState_()
    : power(0.0)
    , enabled(false)  {
    }
  ConveyorBeltState_(const ContainerAllocator& _alloc)
    : power(0.0)
    , enabled(false)  {
  (void)_alloc;
    }



   typedef double _power_type;
  _power_type power;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;





  typedef boost::shared_ptr< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> const> ConstPtr;

}; // struct ConveyorBeltState_

typedef ::gazebo_conveyor::ConveyorBeltState_<std::allocator<void> > ConveyorBeltState;

typedef boost::shared_ptr< ::gazebo_conveyor::ConveyorBeltState > ConveyorBeltStatePtr;
typedef boost::shared_ptr< ::gazebo_conveyor::ConveyorBeltState const> ConveyorBeltStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator1> & lhs, const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator2> & rhs)
{
  return lhs.power == rhs.power &&
    lhs.enabled == rhs.enabled;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator1> & lhs, const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace gazebo_conveyor

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c0b232b8dd148cb7c71d4df1ea72012c";
  }

  static const char* value(const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc0b232b8dd148cb7ULL;
  static const uint64_t static_value2 = 0xc71d4df1ea72012cULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_conveyor/ConveyorBeltState";
  }

  static const char* value(const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Conveyor belt state message\n"
"float64 power  # power of the belt (percentage, in +Y direction of belt frame)\n"
"bool enabled  # true if the power of the belt can be modified; false if the belt is stopped\n"
;
  }

  static const char* value(const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.power);
      stream.next(m.enabled);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ConveyorBeltState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_conveyor::ConveyorBeltState_<ContainerAllocator>& v)
  {
    s << indent << "power: ";
    Printer<double>::stream(s, indent + "  ", v.power);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_CONVEYOR_MESSAGE_CONVEYORBELTSTATE_H
