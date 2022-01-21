class Repository
  def initialize
    @tasks = []
  end

  def all
    @tasks
  end

  def add_task(task)
    @tasks << task # instance of Task
  end

  def find(index)
    @tasks[index]
  end
end
