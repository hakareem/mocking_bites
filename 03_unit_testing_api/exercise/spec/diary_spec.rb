require "diary"

RSpec.describe Diary do
describe "#read" do
 it "returns the contents of the diary" do
  diary = Diary.new("some contents")
  expect(diary.read).to eq "some contents"
  end
 end
end