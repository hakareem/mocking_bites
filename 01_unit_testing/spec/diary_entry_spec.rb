require "diary_entry"

RSpec.describe DiaryEntry do
 it "constructs" do
  diary = DiaryEntry.new("title","a b c")
  expect(diary.title).to eq "title"
  expect(diary.contents).to eq "a b c"
 end


 it "counts words in the contents" do
  diary = DiaryEntry.new("title","a b c")
  expect(diary.count_words).to eq 3
 end

end