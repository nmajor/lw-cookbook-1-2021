class TaskRepository
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  # Remove
  # Update(???)
  # Find one task
  # List all tasks
end

repo = TaskRepository.new()


