RSpec.describe Tools::Chocolate do
  it 'validates that the input arguments are of equal sum' do
    chocolate = Tools::Chocolate.new([[4, 3], [2, 4], [1, 2]], [[6, 2], [4, 2], [1, 1], [1, 1]])
    expect(chocolate.fairness?).to be true
  end
end
