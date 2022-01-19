require_relative '../citizen'

describe Citizen do
  describe '#initialize' do
    it 'returns an instance of Citizen' do
      # initialize(first_name, last_name, age)
      arthur = Citizen.new('arthur', 'bauville', 19) # create an instance of Citizen => run the initialize
      expect(arthur).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'return true if the citizen is older than 18' do
      arthur = Citizen.new('Arthur', 'Bauville', 19)
      expect(arthur.can_vote?).to eq(true)
    end
  end
end