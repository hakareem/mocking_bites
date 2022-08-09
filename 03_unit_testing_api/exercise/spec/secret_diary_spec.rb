require "secret_diary"

RSpec.describe SecretDiary do
 context "when the diary is unlocked" do
  it "reads the contents of the diary" do
   diary = double :diary, read: "contents"
   secret_diary = SecretDiary.new(diary)
   secret_diary.unlock
   expect(secret_diary.read).to eq "contents"
  end
 end

 context "when the diary is locked" do
  it "fails" do
   fake_diary = double :fake_diary, read: "contents"
   secret_diary = SecretDiary.new(fake_diary)
   expect {secret_diary.read}.to raise_error "Go away!"
   end
  end  
 end