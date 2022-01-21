require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository # instance of Repository
    @view = View.new
  end

  def list
    display_tasks
  end

  def add
    # 1. ask the view to get a description from the user
    description = @view.ask_for_description
    # 2. instantiate (create) a task
    task = Task.new(description)
    # 3. store the task in the repository
    @repository.add_task(task)
  end

  def mark_task_as_done
    # 1. display the list of tasks
    display_tasks
    # 2. ask the user to select a task number (gets.chomp)
    index = @view.ask_for_task_index
    # 3. get the task from the repository
    task = @repository.find(index)
    # 4. mark the task as done
    task.mark_as_done!
  end

  private

  def display_tasks
    # 1. get the tasks from the repository
    tasks = @repository.all
    # 2. ask the view to display the tasks
    @view.display_tasks(tasks)
  end
end
