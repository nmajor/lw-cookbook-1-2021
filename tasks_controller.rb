require_relative 'task'

class TasksController
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  # Add and item
  def add_task
    # [VIEW] Ask the user for the description
    # [VIEW] Get the description from the user
    response = @view.ask_user_for_description
    
    # Create a new Task with the description
    task = Task.new(response)

    # Add it to our repository
    @repository.add(task)
  end

  # List all the tasks (check if its done)
  def list_tasks
    # Get the list of tasks from the repository
    tasks = @repository.all

    # Pass the list of tasks to the view
    @view.display_tasks(tasks)
  end

  # Mark as complete
  def mark_as_done
      # [view] display the tasks
      tasks = @repository.all
      @view.display_tasks(tasks)

      # [view] ask the user which task to mark done
      index = @view.ask_the_user_which_task

      # [repository] find the right task from the list
      task = @repository.find(index)

      # [model] mark the task done
      task.mark_as_done!
  end

  private

  def display_tasks
    tasks = @repository.all
    @view.display_tasks(tasks)
  end

  # Remove an item
end