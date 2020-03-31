RSpec.describe Tools::Resistors do
  it 'gets the value for brown and green' do
    resistor_a = Tools::Resistors.new
    expect(resistor_a.value('brown', 'green')).to eq 15
  end

  it 'ignores additional values' do
    resistor_a = Tools::Resistors.new
    expect(resistor_a.value('brown', 'green', 'violet')).to eq 15
  end
end
