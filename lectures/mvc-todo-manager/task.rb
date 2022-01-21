class Task
  attr_reader :description

  def initialize(description)
    @description = description # string
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = true
  end
end
