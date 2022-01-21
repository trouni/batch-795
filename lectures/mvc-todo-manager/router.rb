class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    loop do
      puts '=' * 30
      puts 'What would you like to do next?'
      puts '1. List your tasks'
      puts '2. Add a new task'
      puts '3. Mark a task as done'
      puts '-. Anything else to exit'
      puts '=' * 30

      print '> '
      selected_action = gets.chomp.to_i

      case selected_action
      when 1 then @controller.list
      when 2 then @controller.add
      when 3 then @controller.mark_task_as_done
      else
        break
      end
    end
  end
end