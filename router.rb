class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    # Inifinite loop
    loop do
      # Puts all the options
      puts "What do you want to do?"
      puts "1 - Display tasks"
      puts "2 - Add task"
      puts "3 - Mark a task as done"

      # Find the task that the user selected in the repository

      # Get the user selection
      action = gets.chomp.to_i

      # Run the controller action that the user selected
      case action
      when 1 then @controller.list_tasks
      when 2 then @controller.add_task
      when 3 then @controller.mark_as_done
      end
    end
  end
end