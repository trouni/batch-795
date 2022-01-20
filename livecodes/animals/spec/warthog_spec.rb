require_relative '../warthog'

describe Warthog do
  describe '#initialize' do
    it 'returns an instance of Warthog' do
      expect(Warthog.new('David')).to be_an(Warthog)
    end
  end

  describe '#name' do
    it 'returns the name of the warthog' do
      david = Warthog.new('David')
      expect(david.name).to eq('David')
    end
  end

  describe '#talk' do
    it 'returns "Pumbaa grunts"' do
      pumbaa = Warthog.new('Pumbaa')
      expect(pumbaa.talk).to eq('Pumbaa grunts')
    end
  end
end
