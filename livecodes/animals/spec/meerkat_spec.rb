require_relative '../meerkat'

describe Meerkat do
  describe '#initialize' do
    it 'returns an instance of Meerkat' do
      expect(Meerkat.new('David')).to be_an(Meerkat)
    end
  end

  describe '#name' do
    it 'returns the name of the meerkat' do
      david = Meerkat.new('David')
      expect(david.name).to eq('David')
    end
  end

  describe '#talk' do
    it 'returns "Jessica barks"' do
      jessica = Meerkat.new('Jessica')
      expect(jessica.talk).to eq('Jessica barks')
    end
  end
end
