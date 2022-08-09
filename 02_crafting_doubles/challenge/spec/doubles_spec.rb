RSpec.describe "doubles challenge" do
  it "creates a double" do
    task_list = double :task, add: nil
    test_task = double :task
    expect(task_list).to receive(:list).and_return([test_task])
    expect(task_list).to receive(:count).and_return(1)
    expect(task_list).to receive(:clear).and_return(:success)
    task_list.add(test_task)
    expect(task_list.list).to eq [test_task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end