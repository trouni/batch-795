require_relative 'chef'

class Restaurant
  attr_reader :name, :city, :category, :chef
  attr_accessor :capacity

  # self => the class itself

  # Class method
  def self.categories
    %w[burgers italian japanese french curry]
  end

  def initialize(name, city, capacity, category, chef_name) # constructor
    # STATE
    @name = name # string
    @city = city # string
    @capacity = capacity # integer
    @category = category # string
    @chef = Chef.new(chef_name, self) # instance of Chef
    # self => the instance itself

    @reservations = []
  end

  # # custom/explicit reader
  # def name
  #   @name.capitalize
  # end

  # BEHAVIOUR
  def open?
    Time.now.hour >= 17 && Time.now.hour <= 21
  end

  def closed?
    !open?
  end

  def book(client_name)
    @reservations << client_name
  end

  def print_reservations
    puts '-' * 50
    puts "Here are the reservations for #{name}:"
    @reservations.each_with_index do |client_name, index|
      puts "#{index + 1}. #{client_name}"
    end
    puts '-' * 50
  end
end
