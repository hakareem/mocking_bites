require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  describe "#all" do
    it "returns all available tasks" do
      list = TaskList.new
      task1 = double :task 
      task2 = double :task 
      list.add(task1)
      list.add(task2)
      expect(list.all).to eq [task1,task2]
    end

      it "returns an empty list when there are no tasks" do
      list = TaskList.new
      task1 = double :task 
      task2 = double :task 
      expect(list.all).to eq []
    end
  end

  describe "#all_complete" do
    it "returns false when tasks are empty" do
      list = TaskList.new
      task1 = double :task
      task2 = double :task
      expect(list.all_complete?).to eq false
    end

      it "returns true when all tasks are complete" do
      list = TaskList.new
      task1 = double :task, complete?: true
      task2 = double :task, complete?: true
      list.add(task1)
      list.add(task2)
      expect(list.all_complete?).to eq true
    end

    it "returns false when some of the tasks are complete" do
      list = TaskList.new
      task1 = double :task, complete?: true
      task2 = double :task, complete?: false
      list.add(task1)
      list.add(task2)
      expect(list.all_complete?).to eq false
    end
  end
end