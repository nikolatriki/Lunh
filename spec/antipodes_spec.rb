RSpec.describe Tools::Antipodes do
  it 'gets an antipode array for array of even no. of elements' do
    antipode = Tools::Antipodes.new([1, 2, 3, 4])
    expect(antipode.antipode_out).to eq([2.5, 2.5])
  end

  it 'gets an antipode array for array of odd no. of elements' do
    antipode = Tools::Antipodes.new([1, 2, 3, 4, 5])
    expect(antipode.antipode_out).to eq([3, 3])
  end
  it 'gets an antipode array for array of two elements' do
    antipode = Tools::Antipodes.new([-1, -2])
    expect(antipode.antipode_out).to eq([-1.5])
  end

  it 'gets the input array for array of less than two elements' do
    antipode = Tools::Antipodes.new([6])
    expect(antipode.antipode_out).to eq([6])
  end
end
