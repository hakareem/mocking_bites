require "task_list"
require "task"
require "task_formatter"

RSpec.describe "integration" do
  it "adds tasks to a list" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  it "marks tasks as complete" do
    task_list = TaskList.new
    task_1 = Task.new("Walk the dog")
    task_2 = Task.new("Walk the cat")
    task_list.add(task_1)
    task_list.add(task_2)
    task_1.mark_complete
    task_2.mark_complete
    expect(task_list.all_complete?).to eq true
  end

  context "returning formatted tasks" do
  it "returns completed tasks" do
    task_1 = Task.new("Walk the dog")
    task_1.mark_complete
    task_test = TaskFormatter.new(task_1)
    expect(task_test.format).to eq "[x] Walk the dog"
    end

  it "returns incomplete tasks" do
    task_1 = Task.new("Walk the dog")
    task_test = TaskFormatter.new(task_1)
    expect(task_test.format).to eq "[ ] Walk the dog"
    end
  end
end