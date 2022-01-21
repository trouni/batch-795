class View
  def display_tasks(tasks)
    puts '*' * 30
    puts 'Here are your tasks:'
    tasks.each_with_index do |task, index|
      x = task.done? ? 'x' : ' '
      puts "#{index + 1}. [#{x}] #{task.description}"
    end
    puts '*' * 30
  end

  def ask_for_description
    puts 'What is the description of your task?'
    print '> '
    gets.chomp
  end

  def ask_for_task_index
    puts 'Which task did you complete?'
    print '> '
    gets.chomp.to_i - 1
  end
end
