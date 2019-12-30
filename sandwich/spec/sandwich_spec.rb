# coding: utf-8
Sandwich = Struct.new(:taste, :toppings)


RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'An ideal sandwich' do

  # 'let' is run any time an example calls 'sandwich'
  # an 'example' is a block decared with 'it', in RSpec parlance
  let(:sandwich) {
    puts "I am running the 'let' block for this example" # Shows up once for every 'it' that is run
    # Last line executed gives the return value
    Sandwich.new('delicious', [])
  }

  it 'is delicious' do
    taste = sandwich.taste
    expect(taste).to eq('delicious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'Cheese'
    toppings = sandwich.toppings
    expect(toppings).to_not be_empty
  end

  ## Probably not canonical way to handle expected failures
  it 'does not let me set a random field' do
    begin
      sandwich.no_such_member = 42
    rescue NoMethodError
      expect(true)
    else
      raise 'oops, perhaps we set a random field'
    end

  end
end
