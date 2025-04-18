// Generated by gencpp from file f110_msgs/Wpnt.msg
// DO NOT EDIT!


#ifndef F110_MSGS_MESSAGE_WPNT_H
#define F110_MSGS_MESSAGE_WPNT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace f110_msgs
{
template <class ContainerAllocator>
struct Wpnt_
{
  typedef Wpnt_<ContainerAllocator> Type;

  Wpnt_()
    : id(0)
    , s_m(0.0)
    , d_m(0.0)
    , x_m(0.0)
    , y_m(0.0)
    , d_right(0.0)
    , d_left(0.0)
    , psi_rad(0.0)
    , kappa_radpm(0.0)
    , vx_mps(0.0)
    , ax_mps2(0.0)  {
    }
  Wpnt_(const ContainerAllocator& _alloc)
    : id(0)
    , s_m(0.0)
    , d_m(0.0)
    , x_m(0.0)
    , y_m(0.0)
    , d_right(0.0)
    , d_left(0.0)
    , psi_rad(0.0)
    , kappa_radpm(0.0)
    , vx_mps(0.0)
    , ax_mps2(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef double _s_m_type;
  _s_m_type s_m;

   typedef double _d_m_type;
  _d_m_type d_m;

   typedef double _x_m_type;
  _x_m_type x_m;

   typedef double _y_m_type;
  _y_m_type y_m;

   typedef double _d_right_type;
  _d_right_type d_right;

   typedef double _d_left_type;
  _d_left_type d_left;

   typedef double _psi_rad_type;
  _psi_rad_type psi_rad;

   typedef double _kappa_radpm_type;
  _kappa_radpm_type kappa_radpm;

   typedef double _vx_mps_type;
  _vx_mps_type vx_mps;

   typedef double _ax_mps2_type;
  _ax_mps2_type ax_mps2;





  typedef boost::shared_ptr< ::f110_msgs::Wpnt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::f110_msgs::Wpnt_<ContainerAllocator> const> ConstPtr;

}; // struct Wpnt_

typedef ::f110_msgs::Wpnt_<std::allocator<void> > Wpnt;

typedef boost::shared_ptr< ::f110_msgs::Wpnt > WpntPtr;
typedef boost::shared_ptr< ::f110_msgs::Wpnt const> WpntConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::f110_msgs::Wpnt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::f110_msgs::Wpnt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::f110_msgs::Wpnt_<ContainerAllocator1> & lhs, const ::f110_msgs::Wpnt_<ContainerAllocator2> & rhs)
{
  return lhs.id == rhs.id &&
    lhs.s_m == rhs.s_m &&
    lhs.d_m == rhs.d_m &&
    lhs.x_m == rhs.x_m &&
    lhs.y_m == rhs.y_m &&
    lhs.d_right == rhs.d_right &&
    lhs.d_left == rhs.d_left &&
    lhs.psi_rad == rhs.psi_rad &&
    lhs.kappa_radpm == rhs.kappa_radpm &&
    lhs.vx_mps == rhs.vx_mps &&
    lhs.ax_mps2 == rhs.ax_mps2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::f110_msgs::Wpnt_<ContainerAllocator1> & lhs, const ::f110_msgs::Wpnt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace f110_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::f110_msgs::Wpnt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::f110_msgs::Wpnt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::f110_msgs::Wpnt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::f110_msgs::Wpnt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::f110_msgs::Wpnt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::f110_msgs::Wpnt_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::f110_msgs::Wpnt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13f150fd4a210ecd18beb652ce35aefa";
  }

  static const char* value(const ::f110_msgs::Wpnt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13f150fd4a210ecdULL;
  static const uint64_t static_value2 = 0x18beb652ce35aefaULL;
};

template<class ContainerAllocator>
struct DataType< ::f110_msgs::Wpnt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f110_msgs/Wpnt";
  }

  static const char* value(const ::f110_msgs::Wpnt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::f110_msgs::Wpnt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 id\n"
"\n"
"# frenet coordinates\n"
"float64 s_m\n"
"float64 d_m\n"
"\n"
"# map coordinates\n"
"float64 x_m\n"
"float64 y_m\n"
"\n"
"# track bound distance\n"
"float64 d_right\n"
"float64 d_left\n"
"\n"
"# track information\n"
"float64 psi_rad\n"
"float64 kappa_radpm\n"
"float64 vx_mps\n"
"float64 ax_mps2\n"
"\n"
;
  }

  static const char* value(const ::f110_msgs::Wpnt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::f110_msgs::Wpnt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.s_m);
      stream.next(m.d_m);
      stream.next(m.x_m);
      stream.next(m.y_m);
      stream.next(m.d_right);
      stream.next(m.d_left);
      stream.next(m.psi_rad);
      stream.next(m.kappa_radpm);
      stream.next(m.vx_mps);
      stream.next(m.ax_mps2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Wpnt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::f110_msgs::Wpnt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::f110_msgs::Wpnt_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "s_m: ";
    Printer<double>::stream(s, indent + "  ", v.s_m);
    s << indent << "d_m: ";
    Printer<double>::stream(s, indent + "  ", v.d_m);
    s << indent << "x_m: ";
    Printer<double>::stream(s, indent + "  ", v.x_m);
    s << indent << "y_m: ";
    Printer<double>::stream(s, indent + "  ", v.y_m);
    s << indent << "d_right: ";
    Printer<double>::stream(s, indent + "  ", v.d_right);
    s << indent << "d_left: ";
    Printer<double>::stream(s, indent + "  ", v.d_left);
    s << indent << "psi_rad: ";
    Printer<double>::stream(s, indent + "  ", v.psi_rad);
    s << indent << "kappa_radpm: ";
    Printer<double>::stream(s, indent + "  ", v.kappa_radpm);
    s << indent << "vx_mps: ";
    Printer<double>::stream(s, indent + "  ", v.vx_mps);
    s << indent << "ax_mps2: ";
    Printer<double>::stream(s, indent + "  ", v.ax_mps2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // F110_MSGS_MESSAGE_WPNT_H
