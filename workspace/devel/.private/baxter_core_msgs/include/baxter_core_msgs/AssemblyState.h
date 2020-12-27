// Generated by gencpp from file baxter_core_msgs/AssemblyState.msg
// DO NOT EDIT!


#ifndef BAXTER_CORE_MSGS_MESSAGE_ASSEMBLYSTATE_H
#define BAXTER_CORE_MSGS_MESSAGE_ASSEMBLYSTATE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace baxter_core_msgs
{
template <class ContainerAllocator>
struct AssemblyState_
{
  typedef AssemblyState_<ContainerAllocator> Type;

  AssemblyState_()
    : ready(false)
    , enabled(false)
    , stopped(false)
    , error(false)
    , estop_button(0)
    , estop_source(0)  {
    }
  AssemblyState_(const ContainerAllocator& _alloc)
    : ready(false)
    , enabled(false)
    , stopped(false)
    , error(false)
    , estop_button(0)
    , estop_source(0)  {
  (void)_alloc;
    }



   typedef uint8_t _ready_type;
  _ready_type ready;

   typedef uint8_t _enabled_type;
  _enabled_type enabled;

   typedef uint8_t _stopped_type;
  _stopped_type stopped;

   typedef uint8_t _error_type;
  _error_type error;

   typedef uint8_t _estop_button_type;
  _estop_button_type estop_button;

   typedef uint8_t _estop_source_type;
  _estop_source_type estop_source;



  enum {
    ESTOP_BUTTON_UNPRESSED = 0u,
    ESTOP_BUTTON_PRESSED = 1u,
    ESTOP_BUTTON_UNKNOWN = 2u,
    ESTOP_BUTTON_RELEASED = 3u,
    ESTOP_SOURCE_NONE = 0u,
    ESTOP_SOURCE_USER = 1u,
    ESTOP_SOURCE_UNKNOWN = 2u,
    ESTOP_SOURCE_FAULT = 3u,
    ESTOP_SOURCE_BRAIN = 4u,
  };


  typedef boost::shared_ptr< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> const> ConstPtr;

}; // struct AssemblyState_

typedef ::baxter_core_msgs::AssemblyState_<std::allocator<void> > AssemblyState;

typedef boost::shared_ptr< ::baxter_core_msgs::AssemblyState > AssemblyStatePtr;
typedef boost::shared_ptr< ::baxter_core_msgs::AssemblyState const> AssemblyStateConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_core_msgs::AssemblyState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace baxter_core_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'baxter_core_msgs': ['/home/pedroildefonso/baxter_project/workspace/src/baxter_common/baxter_core_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "356d9dd237ce73b2667da9235f541933";
  }

  static const char* value(const ::baxter_core_msgs::AssemblyState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x356d9dd237ce73b2ULL;
  static const uint64_t static_value2 = 0x667da9235f541933ULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_core_msgs/AssemblyState";
  }

  static const char* value(const ::baxter_core_msgs::AssemblyState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ready               # true if enabled and ready to operate, e.g., not homing\n\
bool enabled             # true if enabled\n\
bool stopped             # true if stopped -- e-stop asserted\n\
bool error               # true if a component of the assembly has an error\n\
#\n\
# The following are specific to the robot top-level assembly:\n\
uint8  estop_button      # One of the following:\n\
  uint8   ESTOP_BUTTON_UNPRESSED = 0   # Robot is not stopped and button is not pressed\n\
  uint8   ESTOP_BUTTON_PRESSED   = 1\n\
  uint8   ESTOP_BUTTON_UNKNOWN   = 2   # STATE_UNKNOWN when estop was asserted by a non-user source\n\
  uint8   ESTOP_BUTTON_RELEASED  = 3   # Was pressed, is now known to be released, but robot is still stopped.\n\
#\n\
uint8  estop_source      # If stopped is true, the source of the e-stop.  One of the following:\n\
  uint8  ESTOP_SOURCE_NONE      = 0   # e-stop is not asserted\n\
  uint8  ESTOP_SOURCE_USER      = 1   # e-stop source is user input (the red button)\n\
  uint8  ESTOP_SOURCE_UNKNOWN   = 2   # e-stop source is unknown\n\
  uint8  ESTOP_SOURCE_FAULT     = 3   # MotorController asserted e-stop in response to a joint fault\n\
  uint8  ESTOP_SOURCE_BRAIN     = 4   # MotorController asserted e-stop in response to a lapse of the brain heartbeat\n\
";
  }

  static const char* value(const ::baxter_core_msgs::AssemblyState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ready);
      stream.next(m.enabled);
      stream.next(m.stopped);
      stream.next(m.error);
      stream.next(m.estop_button);
      stream.next(m.estop_source);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AssemblyState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_core_msgs::AssemblyState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_core_msgs::AssemblyState_<ContainerAllocator>& v)
  {
    s << indent << "ready: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ready);
    s << indent << "enabled: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enabled);
    s << indent << "stopped: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stopped);
    s << indent << "error: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.error);
    s << indent << "estop_button: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.estop_button);
    s << indent << "estop_source: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.estop_source);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_CORE_MSGS_MESSAGE_ASSEMBLYSTATE_H
