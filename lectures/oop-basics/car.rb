class Car
  # attribute readers
  attr_reader :brand, :engine_started # :color (color is now defined as accessor)

  # attribute writer
  # attr_writer :color

  attr_accessor :color # creates both reader and writer

  # attr_reader :attribute_name
  # # The line above does that:
  # def attribute_name
  #   @attribute_name
  # end

  # Constructor
  def initialize(color, brand = 'tesla')
    # ENCAPSULATION
    # instance variable
    @engine_started = false
    @color = color # string
    @brand = brand # string
  end

  # instance methods
  def start!
    inject_fuel
    spark_plugs
    crank_engine

    @engine_started = true
  end

  # def engine_started? # returns a boolean
  #   @engine_started
  # end

  # def brand
  #   @brand
  # end

  # def paint(new_color)
  #   @color = new_color
  # end

  # attribute writers

  # def color=(new_color)
  #   @color = new_color
  # end

  private

  def inject_fuel
    puts 'Injecting fuel...'
  end

  def spark_plugs
    puts 'Sparking plugs...'
  end

  def crank_engine
    puts 'Cranking engine...'
  end
end

kim = Car.new('black', 'ferrari')
puts "Kim's #{kim.brand} is currently #{kim.engine_started ? 'running' : 'off'}."

puts "Starting Kim's #{kim.brand}"
kim.start!

puts "Kim's #{kim.brand} is currently #{kim.engine_started ? 'running' : 'off'}."

puts "Kim's #{kim.brand} is currently #{kim.color}."

puts "Kim paints her car red."
# kim.paint('red')
kim.color = 'red' # kim.color=('red')

puts "Kim's #{kim.brand} is now #{kim.color}."