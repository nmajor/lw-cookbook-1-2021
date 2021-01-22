class TasksView
  def ask_user_for_description
    puts "What do you want to do?"
    gets.chomp
  end

  def display_tasks(tasks)
    # Iterate over the array and puts the description and done
    tasks.each_with_index do |task, index|
      if task.done? 
        done = '[X]'
      else 
        done = '[ ]'
      end

      puts "#{index + 1} - #{done} #{task.description}"
    end
  end

  def ask_the_user_which_task
    puts "Which task to mark done?"
    gets.chomp.to_i - 1
  end
end