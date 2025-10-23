def cow_say(message)
  # pass control over to the block for customizing
  return "#{yield(message)}
        \\   ^__^
         \\  (oo)\\_______
            (__)\\     )\\/\\
                ||----w |
                ||     ||"
end

cow = cow_say("moo!") do |message|
  message.upcase
  # executes this code, then returns to the original method
end

puts cow

puts ""
puts ""

bark = cow_say("bark!") do |message|
  message.capitalize
  # executes this code, then returns to the original method
end

puts bark