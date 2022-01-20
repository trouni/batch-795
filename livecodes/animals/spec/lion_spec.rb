require_relative '../lion'

describe Lion do
  describe '#initialize' do
    it 'returns an instance of Lion' do
      expect(Lion.new('David')).to be_an(Lion)
    end
  end

  describe '#name' do
    it 'returns the name of the lion' do
      david = Lion.new('David')
      expect(david.name).to eq('David')
    end
  end

  describe '#talk' do
    it 'returns "Toby roars"' do
      toby = Lion.new('Toby')
      expect(toby.talk).to eq('Toby roars')
    end
  end

  describe '#eat' do
    it 'returns what the lion ate followed by "Law of the Jungle"' do
      david = Lion.new('David')
      expect(david.eat('a burrito')).to eq('David eats a burrito. Law of the Jungle!')
    end
  end
end
