require_relative 'calculator'

puts "Insert Number"
user_input_1 = gets.chomp.to_i
puts "Would you like to add, subtract, multiply or divide? Use +, -, *, /"
user_input_2 = gets.chomp
puts "Insert Number"
user_input_3 = gets.chomp.to_i
puts calculator_method(user_input_1, user_input_2, user_input_3)
