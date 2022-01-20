require_relative 'restaurant'
require_relative 'fast_food_restaurant'
require_relative 'fine_dining_restaurant'

matsuya = Restaurant.new('Matsuya', 'Meguro', 15, 'gyudon', 'David')

# puts "#{matsuya.name} is in #{matsuya.city} and has a capacity of #{matsuya.capacity} seats."

# puts "Construction work happening at Matsuya..."

# matsuya.capacity = 18

# puts "#{matsuya.name} now has a capacity of #{matsuya.capacity} seats."


# puts "#{matsuya.name} is currently #{matsuya.open? ? 'open' : 'closed'}."

# puts "Arthur, David, Colin want to party at Matsuya..."

# matsuya.book('Arthur')
# matsuya.book('David')
# matsuya.book('Colin')

# matsuya.print_reservations

mcdonalds = FastFoodRestaurant.new("McDonald's", 'Shibuya', 50, 'burgers', 2)
saito = FineDiningRestaurant.new('Sushi Saito', 'Roppongi', 14, 'sushi', 3)

puts "#{mcdonalds.name} is currently #{mcdonalds.open? ? 'open' : 'closed'}."

puts "Arthur, David, Colin want to party at McDonald's..."

mcdonalds.book('Arthur')
mcdonalds.book('David')
mcdonalds.book('Colin')

mcdonalds.print_reservations

puts "Arthur, David, Colin want to party at Sushi Saito..."

saito.book('Arthur')
saito.book('David')
saito.book('Colin')

saito.print_reservations

