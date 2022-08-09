require "greeter"

RSpec.describe Greeter do
  it "greets a user" do
    io = double :io
    expect(io).to receive(:puts).with("What is your name?").ordered
    expect(io).to receive(:gets).and_return("W").ordered
    expect(io).to receive(:puts).with("Hello, W!").ordered
    greet = Greeter.new(io)
    greet.greet
  end
end


