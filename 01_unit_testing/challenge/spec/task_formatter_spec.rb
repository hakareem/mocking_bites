require "task_formatter"

RSpec.describe TaskFormatter do
 context "initializes" do
  it "sets tasks" do
   task = TaskFormatter.new("Run")
   expect(task).to be
  end
 end

 context "formatting the tasks" do
  it "formats completed tasks" do
   fake_task = double :task, complete?: true
   expect(fake_task).to receive(:complete?).and_return("[x] Run")
   expect(fake_task.complete?).to eq "[x] Run"
  end
 end
end