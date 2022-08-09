require "diary_entry"

RSpec.describe DiaryEntry do
 it "constructs" do
  diary = DiaryEntry.new("title","con")
  expect(diary.title).to eq "title"
  expect(diary.contents).to eq "con"
 end
end