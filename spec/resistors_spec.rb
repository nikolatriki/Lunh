RSpec.describe Tools::Resistors do
  it 'gets the value for brown and green' do
    resistor_a = Tools::Resistors.new('brown', 'green')
    expect(resistor_a.value).to eq 15
  end

  it 'ignores additional values' do
    resistor_a = Tools::Resistors.new('brown', 'green', 'violet')
    expect(resistor_a.value).to eq 15
  end
end
