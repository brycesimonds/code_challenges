# Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
# Constraints
# 0 <= input.length <= 100

# Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

def valid_parentheses(string)
  array = string.chars.map {|char| char}.find_all {|object| object == "(" || object == ")"}
  
  true_false_accumulator = []
  if array.empty?
    true
  elsif array.length % 2 == 1
    false
  elsif array.find {|parenth| parenth == "("} == nil || array.find {|parenth| parenth == ")"} == nil
    false
  elsif 
    two_chars = array.each_slice(2).to_a
    first_round_of_array_with_deleted_matches = two_chars.map {|arr| arr.join("")}
    first_round_of_array_with_deleted_matches.delete("()")
    if first_round_of_array_with_deleted_matches.empty? == false
      false
    else
      true
    end 
  end 
end