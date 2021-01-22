require_relative 'router'
require_relative 'task'
require_relative 'task_repository'
require_relative 'tasks_controller'
require_relative 'tasks_view'

repository = TaskRepository.new
view = TasksView.new
controller = TasksController.new(repository, view)
router = Router.new(controller)
router.run

# task1 = Task.new("Download the Expanse")
# task2 = Task.new("Water the plant children")

# repository.add(task1)
# repository.add(task2)

# p repository

