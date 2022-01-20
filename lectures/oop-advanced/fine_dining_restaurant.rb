require_relative 'restaurant'

class FineDiningRestaurant < Restaurant
  def initialize(name, city, capacity, category, stars)
    super(name, city, capacity, category)
    @stars = stars # integer
  end

  def print_reservations
    # puts "Sorry, we do not disclose our client's information."
    puts "*" * 50
    super
    puts "*" * 50
  end
end