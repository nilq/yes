#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.14
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 152)
  def parse(code, show_tokens=false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    27,    26,    17,    19,    20,    21,    22,    23,    24,    25,
    17,    75,    29,    28,    27,    26,    17,    19,    20,    21,
    22,    23,    24,    25,    30,    49,    29,    28,    17,    50,
    15,    77,    18,    32,    52,    43,    44,    88,    54,    32,
    18,    43,    44,    48,    15,    47,    18,    27,    26,    56,
    19,    20,    21,    22,    23,    24,    25,    75,    18,    29,
    28,    27,    26,    47,    19,    20,    21,    22,    23,    24,
    25,    32,    32,    29,    28,    86,    75,    15,    71,    92,
    27,    26,   nil,    19,    20,    21,    22,    23,    24,    25,
   nil,    15,    29,    28,    27,    26,   nil,    19,    20,    21,
    22,    23,    24,    25,   nil,   nil,    29,    28,    27,    26,
    15,    19,    20,    21,    22,    23,    24,    25,   nil,   nil,
    29,    28,    27,    26,    15,    19,    20,    21,    22,    23,
    24,    25,   nil,   nil,    29,    28,    27,    26,    15,    19,
    20,    21,    22,    23,    24,    25,   nil,   nil,    29,    28,
    27,    26,    15,    19,    20,    21,    22,    23,    24,    25,
   nil,   nil,    29,    28,    27,    26,    15,    19,    20,    21,
    22,    23,    24,    25,   nil,   nil,    29,    28,    27,    26,
    15,    19,    20,    21,    22,    23,    24,    25,   nil,   nil,
    29,    28,    27,    26,    15,    19,    20,    21,    22,    23,
    24,    25,   nil,   nil,    29,    28,    27,    26,    15,    19,
    20,    21,    22,    23,    24,    25,   nil,   nil,    29,    28,
    27,    26,    15,    19,    20,    21,    22,    23,    24,    25,
   nil,   nil,    29,    28,    27,    26,    15,    19,    20,    21,
    22,    23,    24,    25,   nil,   nil,    29,    28,    27,    26,
    15,    19,    20,    21,    22,    23,    24,    25,   nil,   nil,
    29,    28,    27,    26,    15,    19,    20,    21,    22,    23,
    24,    25,   nil,   nil,    29,    28,    27,    26,    15,    19,
    20,    21,    22,    23,    24,    25,   nil,   nil,    29,    28,
    27,    26,    15,    19,    20,    21,    22,    23,    24,    25,
   nil,   nil,    29,    28,    27,    26,    15,    19,    20,    21,
    22,    23,    24,    25,   nil,   nil,    29,    28,    27,    26,
    15,    19,    20,    21,    22,    23,    24,    25,   nil,   nil,
    29,    28,   nil,    32,    15,    43,    44,    41,    42,    37,
    38,    39,    40,    35,    36,    34,    33,    75,    15,   nil,
    69,    32,   nil,    43,    44,    41,    42,    37,    38,    39,
    40,    35,    36,    34,    33,    75,    83,   nil,    82,    32,
   nil,    43,    44,    41,    42,    37,    38,    39,    40,    35,
    36,    34,    33,    32,   nil,    43,    44,    41,    42,    37,
    38,    39,    40,    35,    36,    34,    33,    32,   nil,    43,
    44,    41,    42,    37,    38,    39,    40,    35,    36,    34,
    33,    32,   nil,    43,    44,    41,    42,    37,    38,    39,
    40,    35,    36,    34,    33,    32,   nil,    43,    44,    41,
    42,    37,    38,    39,    40,    35,    36,    34,    33,    32,
   nil,    43,    44,    41,    42,    37,    38,    39,    40,    35,
    36,    34,    33,    32,   nil,    43,    44,    41,    42,    37,
    38,    39,    40,    35,    36,    34,    33,    32,   nil,    43,
    44,    41,    42,    37,    38,    39,    40,    35,    36,    34,
    32,   nil,    43,    44,    41,    42,    37,    38,    39,    40,
    35,    36,    32,   nil,    43,    44,    41,    42,    37,    38,
    39,    40,    32,   nil,    43,    44,    41,    42,    37,    38,
    39,    40,    32,   nil,    43,    44,    41,    42,    32,   nil,
    43,    44,    41,    42,    32,   nil,    43,    44,    41,    42,
    32,   nil,    43,    44,    41,    42,    90,   nil,    89 ]

racc_action_check = [
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     2,    50,     0,     0,    75,    75,    75,    75,    75,    75,
    75,    75,    75,    75,     1,    25,    75,    75,    84,    26,
     0,    50,     0,    65,    28,    65,    65,    84,    30,    66,
     2,    66,    66,    24,    75,    24,    75,    47,    47,    32,
    47,    47,    47,    47,    47,    47,    47,    52,    84,    47,
    47,    15,    15,    56,    15,    15,    15,    15,    15,    15,
    15,    67,    68,    15,    15,    77,    89,    47,    47,    90,
    27,    27,   nil,    27,    27,    27,    27,    27,    27,    27,
   nil,    15,    27,    27,    29,    29,   nil,    29,    29,    29,
    29,    29,    29,    29,   nil,   nil,    29,    29,    31,    31,
    27,    31,    31,    31,    31,    31,    31,    31,   nil,   nil,
    31,    31,    33,    33,    29,    33,    33,    33,    33,    33,
    33,    33,   nil,   nil,    33,    33,    34,    34,    31,    34,
    34,    34,    34,    34,    34,    34,   nil,   nil,    34,    34,
    35,    35,    33,    35,    35,    35,    35,    35,    35,    35,
   nil,   nil,    35,    35,    36,    36,    34,    36,    36,    36,
    36,    36,    36,    36,   nil,   nil,    36,    36,    37,    37,
    35,    37,    37,    37,    37,    37,    37,    37,   nil,   nil,
    37,    37,    38,    38,    36,    38,    38,    38,    38,    38,
    38,    38,   nil,   nil,    38,    38,    39,    39,    37,    39,
    39,    39,    39,    39,    39,    39,   nil,   nil,    39,    39,
    40,    40,    38,    40,    40,    40,    40,    40,    40,    40,
   nil,   nil,    40,    40,    41,    41,    39,    41,    41,    41,
    41,    41,    41,    41,   nil,   nil,    41,    41,    42,    42,
    40,    42,    42,    42,    42,    42,    42,    42,   nil,   nil,
    42,    42,    43,    43,    41,    43,    43,    43,    43,    43,
    43,    43,   nil,   nil,    43,    43,    44,    44,    42,    44,
    44,    44,    44,    44,    44,    44,   nil,   nil,    44,    44,
    48,    48,    43,    48,    48,    48,    48,    48,    48,    48,
   nil,   nil,    48,    48,    49,    49,    44,    49,    49,    49,
    49,    49,    49,    49,   nil,   nil,    49,    49,    83,    83,
    48,    83,    83,    83,    83,    83,    83,    83,   nil,   nil,
    83,    83,   nil,    45,    49,    45,    45,    45,    45,    45,
    45,    45,    45,    45,    45,    45,    45,    51,    83,   nil,
    45,    51,   nil,    51,    51,    51,    51,    51,    51,    51,
    51,    51,    51,    51,    51,    53,    72,   nil,    72,    53,
   nil,    53,    53,    53,    53,    53,    53,    53,    53,    53,
    53,    53,    53,     3,   nil,     3,     3,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     3,    55,   nil,    55,
    55,    55,    55,    55,    55,    55,    55,    55,    55,    55,
    55,    70,   nil,    70,    70,    70,    70,    70,    70,    70,
    70,    70,    70,    70,    70,    73,   nil,    73,    73,    73,
    73,    73,    73,    73,    73,    73,    73,    73,    73,    74,
   nil,    74,    74,    74,    74,    74,    74,    74,    74,    74,
    74,    74,    74,    87,   nil,    87,    87,    87,    87,    87,
    87,    87,    87,    87,    87,    87,    87,    57,   nil,    57,
    57,    57,    57,    57,    57,    57,    57,    57,    57,    57,
    58,   nil,    58,    58,    58,    58,    58,    58,    58,    58,
    58,    58,    59,   nil,    59,    59,    59,    59,    59,    59,
    59,    59,    60,   nil,    60,    60,    60,    60,    60,    60,
    60,    60,    61,   nil,    61,    61,    61,    61,    62,   nil,
    62,    62,    62,    62,    63,   nil,    63,    63,    63,    63,
    64,   nil,    64,    64,    64,    64,    85,   nil,    85 ]

racc_action_pointer = [
    -2,    24,     6,   367,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    59,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    13,    -5,    19,    78,    23,    92,
    38,   106,    39,   120,   134,   148,   162,   176,   190,   204,
   218,   232,   246,   260,   274,   317,   nil,    45,   288,   302,
    -1,   335,    45,   353,   nil,   381,    31,   451,   464,   476,
   486,   496,   502,   508,   514,    17,    23,    55,    56,   nil,
   395,   nil,   335,   409,   423,    12,   nil,    65,   nil,   nil,
   nil,   nil,   nil,   316,    24,   505,   nil,   437,   nil,    64,
    69,   nil,   nil ]

racc_action_default = [
    -1,   -58,    -2,    -3,    -6,    -7,    -8,    -9,   -10,   -11,
   -12,   -13,   -14,   -15,   -16,   -58,   -18,   -19,   -20,   -21,
   -22,   -23,   -24,   -25,   -47,   -45,   -58,   -58,   -58,   -58,
   -58,    -5,   -58,   -58,   -58,   -58,   -58,   -58,   -58,   -58,
   -58,   -58,   -58,   -58,   -58,   -58,   -26,   -58,   -58,   -58,
   -58,   -58,   -58,   -58,    93,    -4,   -28,   -33,   -34,   -35,
   -36,   -37,   -38,   -39,   -40,   -41,   -42,   -43,   -44,   -17,
   -31,   -29,   -58,   -48,   -46,   -58,   -50,   -52,   -55,   -56,
   -57,   -27,   -30,   -58,   -58,   -58,   -53,   -32,   -49,   -58,
   -58,   -51,   -54 ]

racc_goto_table = [
    31,     2,    45,    76,    78,    79,    80,    46,     1,    72,
    85,   nil,   nil,   nil,    51,   nil,    53,   nil,    55,   nil,
    57,    58,    59,    60,    61,    62,    63,    64,    65,    66,
    67,    68,   nil,   nil,    70,    73,    74,   nil,   nil,    81,
   nil,   nil,    91,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    87,   nil,   nil,   nil,   nil,   nil,    84,   nil,   nil,   nil,
   nil,   nil,    31 ]

racc_goto_check = [
     4,     2,     3,    18,    18,    18,    18,    16,     1,    17,
    19,   nil,   nil,   nil,     3,   nil,     3,   nil,     3,   nil,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,   nil,   nil,     3,     3,     3,   nil,   nil,    16,
   nil,   nil,    18,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
     3,   nil,   nil,   nil,   nil,   nil,     2,   nil,   nil,   nil,
   nil,   nil,     4 ]

racc_goto_pointer = [
   nil,     8,     1,   -13,    -2,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   -17,   -38,   -47,   -67 ]

racc_goto_default = [
   nil,   nil,   nil,     3,     4,     5,     6,     7,     8,     9,
    10,    11,    12,    13,    14,    16,   nil,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 36, :_reduce_1,
  1, 36, :_reduce_2,
  1, 37, :_reduce_3,
  3, 37, :_reduce_4,
  2, 37, :_reduce_5,
  1, 37, :_reduce_6,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  1, 38, :_reduce_none,
  3, 38, :_reduce_17,
  1, 38, :_reduce_none,
  1, 39, :_reduce_none,
  1, 39, :_reduce_none,
  1, 40, :_reduce_21,
  1, 40, :_reduce_22,
  1, 40, :_reduce_23,
  1, 40, :_reduce_24,
  1, 40, :_reduce_25,
  2, 41, :_reduce_26,
  4, 41, :_reduce_27,
  3, 41, :_reduce_28,
  2, 51, :_reduce_29,
  3, 51, :_reduce_30,
  1, 52, :_reduce_31,
  3, 52, :_reduce_32,
  3, 42, :_reduce_33,
  3, 42, :_reduce_34,
  3, 42, :_reduce_35,
  3, 42, :_reduce_36,
  3, 42, :_reduce_37,
  3, 42, :_reduce_38,
  3, 42, :_reduce_39,
  3, 42, :_reduce_40,
  3, 42, :_reduce_41,
  3, 42, :_reduce_42,
  3, 42, :_reduce_43,
  3, 42, :_reduce_44,
  1, 43, :_reduce_45,
  3, 44, :_reduce_46,
  1, 45, :_reduce_47,
  3, 46, :_reduce_48,
  3, 53, :_reduce_49,
  3, 47, :_reduce_50,
  6, 47, :_reduce_51,
  0, 54, :_reduce_52,
  1, 54, :_reduce_53,
  3, 54, :_reduce_54,
  3, 48, :_reduce_55,
  3, 49, :_reduce_56,
  3, 50, :_reduce_57 ]

racc_reduce_n = 58

racc_shift_n = 93

racc_token_table = {
  false => 0,
  :error => 1,
  :IF => 2,
  :FUNC => 3,
  :NEWLINE => 4,
  :NUMBER => 5,
  :STRING => 6,
  :YES => 7,
  :NO => 8,
  :NOTHING => 9,
  :IDENTIFIER => 10,
  :CONSTANT => 11,
  :INDENT => 12,
  :DEDENT => 13,
  :WHILE => 14,
  :SOMETHING => 15,
  "." => 16,
  "!" => 17,
  "*" => 18,
  "/" => 19,
  "+" => 20,
  "-" => 21,
  ">" => 22,
  ">=" => 23,
  "<" => 24,
  "<=" => 25,
  "==" => 26,
  "!=" => 27,
  "&&" => 28,
  "||" => 29,
  "=" => 30,
  "," => 31,
  "(" => 32,
  ")" => 33,
  ";" => 34 }

racc_nt_base = 35

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
  "IF",
  "FUNC",
  "NEWLINE",
  "NUMBER",
  "STRING",
  "YES",
  "NO",
  "NOTHING",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "WHILE",
  "SOMETHING",
  "\".\"",
  "\"!\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "\">\"",
  "\">=\"",
  "\"<\"",
  "\"<=\"",
  "\"==\"",
  "\"!=\"",
  "\"&&\"",
  "\"||\"",
  "\"=\"",
  "\",\"",
  "\"(\"",
  "\")\"",
  "\";\"",
  "$start",
  "Program",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Operator",
  "GetConstant",
  "SetConstant",
  "GetLocal",
  "SetLocal",
  "Func",
  "If",
  "Something",
  "While",
  "Arguments",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 29)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 30)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 34)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 35)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 36)
  def _reduce_5(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 37)
  def _reduce_6(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

# reduce 15 omitted

# reduce 16 omitted

module_eval(<<'.,.,', 'grammar.y', 51)
  def _reduce_17(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 18 omitted

# reduce 19 omitted

# reduce 20 omitted

module_eval(<<'.,.,', 'grammar.y', 61)
  def _reduce_21(val, _values, result)
     result = NumberNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 62)
  def _reduce_22(val, _values, result)
     result = StringNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 63)
  def _reduce_23(val, _values, result)
     result = YesNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 64)
  def _reduce_24(val, _values, result)
     result = NoNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 65)
  def _reduce_25(val, _values, result)
     result = NothingNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 69)
  def _reduce_26(val, _values, result)
     result = CallNode.new(nil, val[0], val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 71)
  def _reduce_27(val, _values, result)
     result = CallNode.new(val[0], val[2], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 72)
  def _reduce_28(val, _values, result)
     result = CallNode.new(val[0], val[2], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 76)
  def _reduce_29(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 77)
  def _reduce_30(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_31(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 82)
  def _reduce_32(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_33(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 88)
  def _reduce_34(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 89)
  def _reduce_35(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 90)
  def _reduce_36(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_37(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 92)
  def _reduce_38(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_39(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 94)
  def _reduce_40(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 95)
  def _reduce_41(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 96)
  def _reduce_42(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_43(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 98)
  def _reduce_44(val, _values, result)
     result = CallNode.new(val[0], val[1], [val[2]]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 102)
  def _reduce_45(val, _values, result)
     result = GetConstantNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 106)
  def _reduce_46(val, _values, result)
     result = SetConstantNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 110)
  def _reduce_47(val, _values, result)
     result = GetLocalNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 114)
  def _reduce_48(val, _values, result)
     result = SetLocalNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 118)
  def _reduce_49(val, _values, result)
     result = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 122)
  def _reduce_50(val, _values, result)
     result = FuncNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 124)
  def _reduce_51(val, _values, result)
     result = FuncNode.new(val[1], val[3], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 128)
  def _reduce_52(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 129)
  def _reduce_53(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 130)
  def _reduce_54(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 134)
  def _reduce_55(val, _values, result)
     result = IfNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 138)
  def _reduce_56(val, _values, result)
     result = SomethingNode.new(val[1], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 142)
  def _reduce_57(val, _values, result)
     result = WhileNode.new(val[1], val[2]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
