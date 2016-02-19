require "./sinatra_todo"

RSpec.describe TaskNote do 
  describe "task" do
    it "a task has content" do
      task = TaskNote.new("content")
      expect(task.info).to eq("content")
    end
    it "First Task has an id of 1" do
      @task = TaskNote.new("content")
      expect(@task.id).to eq(2)
    end
    it "Second Task has an id of 2" do
      variable1 = TaskNote.new("content")
      task2 = TaskNote.new("content2")
      expect(task2.id).to eq(4)
    end
    it "task completion not completted" do
      @task = TaskNote.new("content2")
      expect(@task.complete?).to eq(false)
    end
    it "task completion completted" do
      @task = TaskNote.new("content2")
      @task.complete!
      expect(@task.complete?).to eq(true)
    end
     it "task reverse completted" do
      @task = TaskNote.new("content2")
      @task.complete!
      @task.make_incomplete!
      expect(@task.complete?).to eq(false)
    end
     it "task modify content" do
      @task = TaskNote.new("content2")
      @task.update_content!("new content")
      expect(@task.info).to eq("new content")
    end
  end
end

RSpec.describe TodoList do
  it "The TodoList exists" do
    @task = TaskNote.new("content")
    @todolist = TodoList.new
    expect(@todolist.add_task(@task)).to eq([@task])
  end
  it "does something" do
    
  end
end





















