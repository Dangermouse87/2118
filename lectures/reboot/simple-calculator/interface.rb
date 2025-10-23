# Pseudocode

# 1) - Welcome The User
puts "Welcome to the calculator"

# 12) Implement the loop.
continue = "Y"

while continue == "Y"
  # 2) - Ask for a number
  puts "What's the first number?"
  # 3) - Get the users input and store it in a variable
  first_number = gets.chomp.to_i
  # 4) - Ask for an operator (+ , - , *, /)
  puts "What operater do you want to use?"
  # 5) - Get the user input and store it in a variable
  operater = gets.chomp
  # 6) - Ask for a second number
  puts "Please put a second number?"
  # 7) - Get the user input and store it in a variable
  second_number = gets.chomp.to_i
  # 8) - Calculate based on the operator
  case operater
  when "+"
    result = first_number + second_number
  when "-"
    result = first_number - second_number
  when "*"
    result = first_number * second_number
  when "/"
    result = first_number.to_f / second_number
  end
  # 9) - Display The Result
  puts "#{first_number} #{operater} #{second_number} = #{result}"
  # 10) Ask if the user wants to continue / calculate again
  puts "Do you want to calculate again? [Y/N]"
  # 11) Get the answer from the user and then store it.
  continue = gets.chomp.capitalize
end