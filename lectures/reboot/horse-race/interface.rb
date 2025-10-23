# Horse Race

# Pseudocode

# 1) Print a welcome message
puts "==🐎====🐎====🐎====🐎=="
puts "Welcome to the horse race!"
puts "==🐎====🐎====🐎====🐎=="

answer = "yes" # initialise answer 
balance = 200
while answer == "yes"
  # 2) Initialize an array of horses
  horses = ["Penolope", "Butterscotch", "Toejam", "Turtle", "Black Sheep"]
  # 3) Display The Horse (iterate with each_with_index) - + 1 to index for natural numbering
  horses.each_with_index{ |horse, index| puts "#{index + 1} - #{horse}" }
  # 4) Ask the user for a horse (using a number)
  puts "Choose a horse number"
  # 5) Get the user input and store it ( -1 to get the index)
  user_horse = gets.chomp.to_i - 1
  puts "Your horse is #{horses[user_horse]}"
  # 6) Get a random horse from the array and store in a variable
  random_horse = horses.sample
  # puts "The random horse is #{random_horse}"
  # 7) Compare the random horse with the user's choice
  # 8) Output a message saying whether the user has won or lost.
  if user_horse == random_horse
    puts "You won"
    balance += 50 # increase balance if you win
  else
    puts "You lost, Try Again"
    balance -= 10 # decrease on loss
    # 9) Display the winner of the race.
    puts "The winner is #{random_horse}"
    puts "Your balance is #{balance}"
  end
  puts "Do you want to try again? [yes/no]"
  answer = gets.chomp
  if balance <= 0
    puts "You have no money to bet"
    answer = "no"
  end
end

# Step 2 - Loop

# 10) Ask the user if they want to try again
# 11) Store the answer the answer in a variable
# 12) Implement the loop

# Step 3 - Betting

# 13) Initialise a balance + display the balance
# 14) Amend the balance on result
    # Win +50
    # Lose -10
