RSpec.describe Tools::ArmstrongNumber do
  it 'validates 6 as Armstrong number.' do
    armstrong = Tools::ArmstrongNumber.new(6)
    expect(armstrong.valid?).to be true
  end

  it '64 is not an Armstrong number.' do
    armstrong = Tools::ArmstrongNumber.new(64)
    expect(armstrong.valid?).to be false
  end

  it 'determines that 371 is an Armstrong number' do
    armstrong = Tools::ArmstrongNumber.new(371)
    expect(armstrong.valid?).to be true
  end
end
