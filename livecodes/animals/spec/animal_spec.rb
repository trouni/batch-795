require_relative '../animal'

describe Animal do
  describe '#initialize' do
    it 'returns an instance of Animal' do
      expect(Animal.new('David')).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the name of the animal' do
      david = Animal.new('David')
      expect(david.name).to eq('David')
    end
  end

  describe '::phyla' do
    it 'returns the four phyla of the animal kingdom' do
      expect(Animal.phyla).to eq([
        'the worms', 'the molluscs', 'the sea cucumbers', 'the ones with the back-end'
      ])
    end
  end

  describe '#eat' do
    it 'returns what the animal ate' do
      david = Animal.new('David')
      expect(david.eat('a burrito')).to eq('David eats a burrito')
    end
  end
end
