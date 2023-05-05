require_relative "../bottles"

RSpec.describe Bottles do
  describe '.for' do
    it 'returns the correct class for given number' do
      expect(BottleNumber.for(0)).to be_a(BottleNumber0)
      expect(BottleNumber.for(1)).to be_a(BottleNumber1)
      expect(BottleNumber.for(6)).to be_a(BottleNumber6)

      expect(BottleNumber.for(7)).to be_a(BottleNumber)
      expect(BottleNumber.for(45)).to be_a(BottleNumber)
    end
  end
end