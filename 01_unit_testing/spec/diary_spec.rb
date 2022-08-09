require "diary"


RSpec.describe Diary do
 context "constructs" do
  it "returns an empty list" do
   diary = Diary.new
   expect(diary.entries).to eq []
  end
 end

 it "adds and lists diary entries" do
  diary = Diary.new
  task = double :diary_entry
  task2 = double :diary_entry
  diary.add(task)
  diary.add(task2)
  expect(diary.entries).to eq [task,task2]
 end


 it "counts words in the entries given" do
  diary = Diary.new
  task = double :diary_entry, count_words: 5
  task2 = double :diary_entry, count_words: 3
  diary.add(task)
  diary.add(task2)
  expect(diary.count_words).to eq 8
 end
end

