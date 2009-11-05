#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.6
# from Racc grammer file "".
#

require 'racc/parser.rb'

require 'rack/mount/regexp/tokenizer'

module Rack
  module Mount
    class RegexpParser < Racc::Parser


class Node < Struct.new(:left, :right)
  def flatten
    if left.is_a?(Node)
      left.flatten + [right]
    else
      [left, right]
    end
  end
end

class Expression < Array
  def initialize(ary)
    if ary.is_a?(Node)
      super(ary.flatten)
    else
      super([ary])
    end
  end
end

class Group < Struct.new(:value)
  attr_accessor :quantifier

  def ==(other)
    self.value == other.value &&
      self.quantifier == other.quantifier
  end
end

class Character < Struct.new(:value)
  attr_accessor :quantifier

  def ==(other)
    self.value == other.value &&
      self.quantifier == other.quantifier
  end
end
##### State transition tables begin ###

racc_action_table = [
     8,     9,    10,     8,     9,    10,     2,     4,     2,     4,
     2,     4,    14,    15,    12 ]

racc_action_check = [
    13,    13,    13,     1,     1,     1,     6,     6,     0,     0,
     4,     4,    11,    12,     5 ]

racc_action_pointer = [
     6,    -2,   nil,   nil,     8,    14,     4,   nil,   nil,   nil,
   nil,     8,    13,    -5,   nil,   nil,   nil ]

racc_action_default = [
   -12,    -5,    -7,    -6,   -12,   -12,    -1,    -4,    -9,   -10,
   -11,   -12,   -12,    -3,    -8,    17,    -2 ]

racc_goto_table = [
     7,     5,    13,   nil,   nil,    11,   nil,   nil,   nil,   nil,
   nil,   nil,    16 ]

racc_goto_check = [
     4,     1,     3,   nil,   nil,     1,   nil,   nil,   nil,   nil,
   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     1,   nil,    -4,    -1,   nil ]

racc_goto_default = [
   nil,   nil,     6,     1,   nil,     3 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 9, :_reduce_1,
  3, 10, :_reduce_2,
  2, 10, :_reduce_3,
  2, 10, :_reduce_4,
  1, 10, :_reduce_none,
  1, 11, :_reduce_none,
  1, 11, :_reduce_7,
  3, 13, :_reduce_8,
  1, 12, :_reduce_none,
  1, 12, :_reduce_none,
  1, 12, :_reduce_none ]

racc_reduce_n = 12

racc_shift_n = 17

racc_token_table = {
  false => 0,
  :error => 1,
  :CHAR => 2,
  :LPAREN => 3,
  :RPAREN => 4,
  :STAR => 5,
  :PLUS => 6,
  :QMARK => 7 }

racc_nt_base = 8

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "CHAR",
  "LPAREN",
  "RPAREN",
  "STAR",
  "PLUS",
  "QMARK",
  "$start",
  "expression",
  "branch",
  "atom",
  "quantifier",
  "group" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
 result = Expression.new(val[0]) 
    result
end

def _reduce_2(val, _values, result)
            val[1].quantifier = val[2]
            result = Node.new(val[0], val[1])
          
    result
end

def _reduce_3(val, _values, result)
 result = Node.new(val[0], val[1]) 
    result
end

def _reduce_4(val, _values, result)
            val[0].quantifier = val[1]
            result = val[0]
          
    result
end

# reduce 5 omitted

# reduce 6 omitted

def _reduce_7(val, _values, result)
 result = Character.new(val[0]) 
    result
end

def _reduce_8(val, _values, result)
 result = Group.new(val[1]) 
    result
end

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class RegexpParser
    end   # module Mount
  end   # module Rack