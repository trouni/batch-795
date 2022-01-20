require_relative 'restaurant'

class FastFoodRestaurant < Restaurant # UpperCamelCase
  def initialize(name, city, capacity, category, prep_time)
    super(name, city, capacity, category)
    # super calls the method of the same name, but in the ParentClass
    @prep_time = prep_time # integer
  end

  def book(client_name)
    puts "Sorry, we don't take reservations at #{name}."
  end

  def print_reservations
    puts "Sorry, no reservations here."
  end
end