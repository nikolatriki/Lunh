RSpec.describe Tools::Luhn do
  it 'It doesn\'t allow single digit strings' do
    my_string = Tools::Luhn.new('3')
    expect(my_string.valid?).to be false
  end

  it 'doesn\'t allow empty string' do
    my_string = Tools::Luhn.new('')
    expect(my_string.valid?).to be false
  end

  it 'does\'t allow single zero input' do
    my_string = Tools::Luhn.new('0')
    expect(my_string.valid?).to be false
  end

  it 'valid if there are two or more digits' do
    my_string = Tools::Luhn.new('059')
    expect(my_string.valid?).to be true
  end

  it 'remains valid if digits reversed' do
    my_string = Tools::Luhn.new('059')
    expect(my_string.valid?).to be true
  end

  it 'becomes invalid if string reversed' do
    my_string = Tools::Luhn.new('59')
    expect(my_string.valid?).to be true
  end

  it 'is valid Canadian sin number' do
    my_string = Tools::Luhn.new('055444285')
    expect(my_string.valid?).to be true
  end

  it 'is invalid Canadian sin number' do
    my_string = Tools::Luhn.new('055 444 286')
    expect(my_string.valid?).to be false
  end


end
