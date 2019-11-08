#Today's assignment will be building a calculator in ruby.

# Calculator Basic Objectives

# take the first number
# take modifier
# take the last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# the result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work
 

# Calculator Bonus Objectives:

# allow ( ) - (PEMDAS - order of operations)
# HINT: you will need to use REGEX to complete this or have super messy code
# http://regexone.com/ (Links to an external site.) (Links to an external site.)
# http://rubular.com/ (Links to an external site.)
# allow string input - (refactor to just take 1 user input instead of a first number, operator, and last number)
# for example( "1 + 1") or ("50 * 100") - this is going to be a bit more complicated since you will have to parse the string to find the first number, operator, and last number (hint: split the string and check)
# make it work with floats
# calculator history
# memory function
# The calculator has one memory that can be used for storing values temporarily.
# SIN, COS, ect..
# user types quit exiting the program
 

# See below for examples of a possible solution:


def calculator

  keep_looping = true
  result = nil
  first_number = nil
  second_number = nil
 
  while keep_looping
  begin
  if result
  puts "Result: #{result}"
  first_number = result
  else
 
  puts "First Number:"
    first_number = gets.strip.to_f
  end
  puts "Modifier ( + - * / ) or clear:"
     modifier = gets.strip
  if modifier == 'clear'
      result = nil
    redo
  end
 
  puts "Second Number:"
  second_number = gets.strip.to_f
  end until result = get_result(first_number, modifier, second_number)
  end
 end
 
 def get_result(first, mod, second)
  unless first.is_a?(Numeric) && second.is_a?(Numeric) && ['+', '-', '*', '/'].include?(mod)
  puts "Your data was bad, please start over!"
 
    return false
  end
 
  case mod
  when '+'
    return first.to_f + second.to_f
  when '-'
    return first.to_f - second.to_f
  when '*'
    return first.to_f * second.to_f
  when '/'
    return first.to_f / second.to_f
 
  end
 end

 calculator