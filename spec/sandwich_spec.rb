Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do

  it 'is delicious' do
    sandwich = Sandwich.new('delicious', [])
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich = Sandwich.new('delicious', [])
    sandwich.toppings << 'Cheese'
    toppings = sandwich.toppings
    expect(toppings).to_not be_empty
  end
end
