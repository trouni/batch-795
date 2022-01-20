# Define an Animal with an initialize(name) constructor, exposing its name.
class Animal
  attr_reader :name

  def self.phyla
    ['the worms', 'the molluscs', 'the sea cucumbers', 'the ones with the back-end']
  end

  def initialize(name)
    @name = name
  end

  def eat(food)
    "#{@name} eats #{food}"
  end
end
