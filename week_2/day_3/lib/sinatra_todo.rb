require "pry"
class TaskNote
  attr_reader :content, :id
  @@curent_id = 1
  def initialize(content)
    @content = content
    @id = @@curent_id
    @@curent_id += 1
    @completted = false
    @created_at = Time.now
    @update_at = nil
  end
  def info
    @content
  end
  def id
    @id
  end
  def complete?
    @completted
  end
  def complete!
    @completted = true    
  end
  def make_incomplete!
    @completted = false
  end
  def update_content!(new_content)
    @content = new_content
    @update_at = Time.now
  end
end

class TodoList
  attr_reader :tasks
  def initialize
    @tasks = []
  end
  def add_task(task)
    @tasks.push(task)
  end
  def delete_task(deleted_id)
    @tasks.delete_if {|w| w.id == deleted_id}
  end
  def find_task_by_id(search_id)
    if @tasks.each {|w| w.id}.include?(search_id)
      searched_index = @tasks.find_index{|w| w.id == search_id}
      @tasks[searched_index]
    else
      nil
    end

  end

end