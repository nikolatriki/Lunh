RSpec.describe Tools::Resistors do
  describe 'Gets the numeric output values from input colors' do

    it 'gets the value for brown and green' do
      resistor_a = Tools::Resistors.new(['brown', 'green'])
      expect(resistor_a.base).to eq 15
    end

    it 'ignores additional values' do
      resistor_a = Tools::Resistors.new(['brown', 'green', 'violet'])
      expect(resistor_a.base).to eq 15
    end
  end

  describe 'Full resistors specification' do
    it 'presents the specification' do
      resistor_a = Tools::Resistors.new(['brown', 'green', 'violet'])
      expected = ' 150000000 ohms +-20%'
      expect(resistor_a.specification).to eq expected
    end

    it 'presents the specification' do
      resistor_a = Tools::Resistors.new(['blue', 'yellow', 'red', 'gold'])
      expected = ' 6400 ohms +-5%'
      expect(resistor_a.specification).to eq expected
    end
  end
end
