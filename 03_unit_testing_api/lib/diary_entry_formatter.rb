# File: lib/diary_reader.rb

class DiaryEntryFormatter
  def initialize(diary_entry) 
  @diary_entry = diary_entry
  end

  def format
  return "#{@diary_entry.title} : #{@diary_entry.contents}"
  end
end