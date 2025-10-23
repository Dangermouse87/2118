# something do | something |
#   "some code" 
# end

def timer
  # do something
  puts "Start Timer" # do something
  yield # passes off control to a block of code
  puts "End Timer" # do something
end

timer do
  # This is where the block has control
  puts "I have control now"
  sleep(2)
  puts "I am going to sleep now"
  puts "I am going back to the timer method now"
  # goes back to the initial method execution
end
