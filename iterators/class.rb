# Example
# Each time we have a session, it is pretty much the same.
# However, the subject matter is always different 

def classroom(topic) 
  puts "Class starts!"
  # block_given? == guard clause if no block is given
  puts block_given? ? yield(topic) : topic  # Pass topic to the block
  puts "Class ends!"
end

classroom("iterators") do |topic|
  # yield executes from here when given control
  "Today you are learning #{topic.capitalize}!"
  # returns to the method after all lines in the block are executed!
end
