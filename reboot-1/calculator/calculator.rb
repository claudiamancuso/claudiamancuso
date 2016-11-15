#  build a simple calculator with a command-line UI
#  first handling only additions
#  then all operations (mutliplications, substractions, divisions).
#  Start with the interface coding a uber-simple version.

def calculator_method(number_one, operator, number_two)
  if operator == "+"
    return result = number_one + number_two
  elsif operator == "-"
    return result = number_one - number_two
  elsif operator == "*"
    return result = number_one * number_two
  else operator == "/"
    return result = number_one / number_two
  end
end
