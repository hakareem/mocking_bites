
class StringRepeater

 def initialize(terminal)
  @terminal = terminal
 end

 def run 
  @terminal.puts "Hello. I will repeat a string many times."
  @terminal.puts "Please enter a string"
  str = @terminal.gets.chomp
  @terminal.puts "Please enter a number of repeats"
  num = @terminal.gets.chomp
  @terminal.puts "Here is your result:"
  @terminal.puts str * num.to_i
 end
end