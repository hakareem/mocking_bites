require "interactive_calculator"


RSpec.describe InteractiveCalculator do
it "adds two numbers together and returns the result" do
  io = double :io
  expect(io).to receive(:puts).with("Hello. I will subtract two numbers").ordered
  expect(io).to receive(:puts).with("Please enter a number").ordered
  expect(io).to receive(:gets).and_return("5").ordered
  expect(io).to receive(:puts).with("Please enter another number").ordered
  expect(io).to receive(:gets).and_return("5").ordered
  expect(io).to receive(:puts).with("Here is your result:").ordered
  expect(io).to receive(:puts).and_return("5 + 5 = 10").ordered
  calc = InteractiveCalculator.new(io)
  calc.run
 end
end

