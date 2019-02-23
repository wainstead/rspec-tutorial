Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do

  let(:sandwich) { Sandwich.new('delicious', []) }
  
  it 'is delicious' do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'Cheese'
    toppings = sandwich.toppings
    expect(toppings).to_not be_empty
  end
end
