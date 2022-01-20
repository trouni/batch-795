require_relative 'lion'
require_relative 'meerkat'
require_relative 'warthog'

simba = Lion.new('Simba')
nala = Lion.new('Nala')
timon = Meerkat.new('Timon')
pumbaa = Warthog.new('Pumbaa')

[simba, nala, timon, pumbaa].each do |animal|
  # polymorphism
  # duck typing
  puts animal.talk
end
