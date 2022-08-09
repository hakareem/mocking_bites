require "diary_entry"
require "diary_entry_formatter"


RSpec.describe "integration" do
 it "formats a diary entry" do
  diary = DiaryEntry.new("title","contents")
  diary_entry_format = DiaryEntryFormatter.new(diary)
  expect(diary_entry_format.format).to eq "title : contents"
 end
end