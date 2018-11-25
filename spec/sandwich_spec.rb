Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  def sandwich
    @sandwich ||= Sandwich.new('delicious', [])
  end
  
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
