class Citizen
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    # instance variables
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # instance methods
  def can_vote?
    @age >= 18
  end

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end
end
