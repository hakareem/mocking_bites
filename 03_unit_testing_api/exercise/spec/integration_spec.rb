require "diary"
require "secret_diary"

RSpec.describe "integration" do
  context "when the diary is unlocked" do
    it "reads the contents of the diary" do
      diary = Diary.new("contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
    end
  end

  context "when the diary is locked" do
    it "fails" do
      diary = Diary.new("contents")
      secret_diary = SecretDiary.new(diary)
      expect {secret_diary.read}.to raise_error "Go away!"
    end
  end

  context "when the diary is locked then unlocked" do
    it "reads the contents of the diary" do
      diary = Diary.new("contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.lock
      secret_diary.unlock
      expect(secret_diary.read).to eq "contents"
    end
  end
end