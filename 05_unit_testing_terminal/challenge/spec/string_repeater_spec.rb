require "string_repeater"


RSpec.describe StringRepeater do
it "repeats a string a certain number of times" do
  terminal = double :terminal
  expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
  expect(terminal).to receive(:puts).with("Please enter a string").ordered
  expect(terminal).to receive(:gets).and_return("walk").ordered
  expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
  expect(terminal).to receive(:gets).and_return("3").ordered
  expect(terminal).to receive(:puts).with("Here is your result:").ordered
  expect(terminal).to receive(:puts).with("walkwalkwalk").ordered
  string = StringRepeater.new(terminal)
  string.run
 end
end



# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX




