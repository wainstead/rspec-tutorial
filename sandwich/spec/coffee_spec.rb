#---
# Excerpted from "Effective Testing with RSpec 3",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rspec3 for more book information.
#---
class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + ingredients.size * 0.25
  end

  def color
    ingredients.include?(:milk) ? :light : :dark
  end

  def temperature
    ingredients.include?(:milk) ? 190.0 : 205.0
  end

  def size
    1
  end

  def inspect
    return self.to_s
  end
end

RSpec.configure do |config|
  # Setting this will cause rspec to only run "focused" tests
  # (fdescribe, fcontext, fit)
  config.filter_run_when_matching(focus: true)
  # Setting this writes test results to a file; you can then rerun
  # only failed test because rpsec knows to look for this
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context 'with milk' do
    # for this context we are using a "before hook" to modify the
    # coffee instance
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end

    it 'has a size specified' do
      expect(1..4).to include(coffee.size)
    end

    it 'is light in color' do
      #pending "not yet implemented"
      expect(coffee.color).to be(:light)
    end

    it 'is cooler than 200 degrees Fahrenheit' do
      #pending "not yet implemented"
      expect(coffee.temperature).to be < 200.0
    end
  end
end
