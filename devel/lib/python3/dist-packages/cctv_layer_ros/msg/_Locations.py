# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cctv_layer_ros/Locations.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cctv_layer_ros.msg

class Locations(genpy.Message):
  _md5sum = "d39aba7ca00bf507fa36e8be0212b2bd"
  _type = "cctv_layer_ros/Locations"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint16 msg_seq
Coordinate[] location

================================================================================
MSG: cctv_layer_ros/Coordinate
int16 x
int16 y
"""
  __slots__ = ['msg_seq','location']
  _slot_types = ['uint16','cctv_layer_ros/Coordinate[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       msg_seq,location

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Locations, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.msg_seq is None:
        self.msg_seq = 0
      if self.location is None:
        self.location = []
    else:
      self.msg_seq = 0
      self.location = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.msg_seq
      buff.write(_get_struct_H().pack(_x))
      length = len(self.location)
      buff.write(_struct_I.pack(length))
      for val1 in self.location:
        _x = val1
        buff.write(_get_struct_2h().pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.location is None:
        self.location = None
      end = 0
      start = end
      end += 2
      (self.msg_seq,) = _get_struct_H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.location = []
      for i in range(0, length):
        val1 = cctv_layer_ros.msg.Coordinate()
        _x = val1
        start = end
        end += 4
        (_x.x, _x.y,) = _get_struct_2h().unpack(str[start:end])
        self.location.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.msg_seq
      buff.write(_get_struct_H().pack(_x))
      length = len(self.location)
      buff.write(_struct_I.pack(length))
      for val1 in self.location:
        _x = val1
        buff.write(_get_struct_2h().pack(_x.x, _x.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.location is None:
        self.location = None
      end = 0
      start = end
      end += 2
      (self.msg_seq,) = _get_struct_H().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.location = []
      for i in range(0, length):
        val1 = cctv_layer_ros.msg.Coordinate()
        _x = val1
        start = end
        end += 4
        (_x.x, _x.y,) = _get_struct_2h().unpack(str[start:end])
        self.location.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2h = None
def _get_struct_2h():
    global _struct_2h
    if _struct_2h is None:
        _struct_2h = struct.Struct("<2h")
    return _struct_2h
_struct_H = None
def _get_struct_H():
    global _struct_H
    if _struct_H is None:
        _struct_H = struct.Struct("<H")
    return _struct_H
