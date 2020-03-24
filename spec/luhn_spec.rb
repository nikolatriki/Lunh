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

  # it 'remains valid if digits reversed' do
  #   my_string = Tools::Luhn.new('059')
  #   expect(my_string.valid?).to be true
  # end

  # it 'becomes invalid if string reversed' do
  #   my_string = Tools::Luhn.new('59')
  #   expect(my_string.valid?).to be true
  # end

  # it 'valid Canadian sin' do
  #   my_string = Tools::Luhn.new('055 444 285')
  #   expect(my_string.valid?).to be true
  # end

  # it 'invalid Canadian sin' do
  #   my_string = Tools::Luhn.new('055 444 286')
  #   expect(my_string.valid?).to be false
  # end

  # it 'invalid credit card' do
  #   my_string = Tools::Luhn.new('827 1232 7352 0569')
  #   expect(my_string.valid?).to be false
  # end

  # it 'valid string with a non digit included become invalid' do
  #   my_string = Tools::Luhn.new('055a 444 285')
  #   expect(my_string.valid?).to be false
  # end

  # it 'valid strings with a non digit added at the end become invalid' do
  #   my_string = Tools::Luhn.new('059a')
  #   expect(my_string.valid?).to be false
  # end

  # it 'valid string with punctuation included become invalid' do
  #   my_string = Tools::Luhn.new('055-444-285')
  #   expect(my_string.valid?).to be false
  # end

  # it 'valid strings with symbols included become invalid' do
  #   my_string = Tools::Luhn.new('055^ 444$ 285')
  #   expect(my_string.valid?).to be false
  # end

  # it 'single zero space is invalid' do
  #   my_string = Tools::Luhn.new(' 0')
  #   expect(my_string.valid?).to be false
  # end

  # it 'more than a single zero is valid' do
  #   my_string = Tools::Luhn.new('0000 0')
  #   expect(my_string.valid?).to be true
  # end

  # it 'input digit 9 is correctly converted to output digit 9' do
  #   my_string = Tools::Luhn.new('091')
  #   expect(my_string.valid?).to be true
  # end

  # it 'strings with non digits is invalid' do
  #   my_string = Tools::Luhn.new(':9')
  #   expect(my_string.valid?).to be false
  # end

end
