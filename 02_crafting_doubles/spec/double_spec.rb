RSpec.describe "doubles" do
  it "sets up a blank double" do
    fake_object = double :fake_object
    expect(fake_object).to be
  end

  it "sets up a double with methods" do
    fake_object = double :fake_object
    expect(fake_object).to receive(:speak).and_return("Meow")
    expect(fake_object).to receive(:count_ears).and_return(2)
    expect(fake_object).to receive(:count_legs).and_return(4)
    expect(fake_object.speak).to eq "Meow"
    expect(fake_object.count_ears).to eq 2
    expect(fake_object.count_legs).to eq 4
  end

  it "sets up a double with methods that take arguments" do
    fake_object = double :fake_object
    expect(fake_object).to receive(:speak).with("Jess").and_return("Meow, Jess")
    expect(fake_object.speak("Jess")).to eq "Meow, Jess"
    expect { fake_object.speak("ron") }.to raise_error RSpec::Mocks::MockExpectationError
  end

  it "sets up doubles that expect to be called" do
    fake_object = double :animal
    expect(fake_object).to receive(:speak).with("Steve")
    fake_object.speak("Steve")
  end

  it "creates a double for a specific case" do
    fake_diary = double :diary, add: nil
    expect(fake_diary).to receive(:count_entries).and_return(2)
    fake_diary.add(double :diary_entry)
    fake_diary.add(double :diary_entry)
    expect(fake_diary.count_entries).to eq 2
  end
end