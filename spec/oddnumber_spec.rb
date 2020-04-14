RSpec.describe Tools::OddNumber do
  it 'finds the first integer which appears an odd number of times' do
    input_array = Tools::OddNumber.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expect(input_array.first_odd).to eq 5
  end

  it 'returns all of the integers which appear an odd number of times' do
    input_array = Tools::OddNumber.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expect(input_array.all_odd).to eq [5, -1]
  end

  it 'finds the first integer which appears an odd number of times' do
    input_array = Tools::OddNumber.new([10])
    expect(input_array.first_odd).to eq 10
  end


  it 'returns all of the integers which appear an odd number of times for one element' do
    input_array = Tools::OddNumber.new([10])
    expect(input_array.all_odd).to eq [10]
  end

end
