# coding: utf-8
class Tea
  attr_reader :flavor, :temperature
  def initialize
    @flavor = :earl_gray
    @temperature = 300.0
  end
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/examples.txt'
end

RSpec.describe Tea do
  let(:tea) { Tea.new }
  
  it 'tastes like Earl Grey' do
    expect(tea.flavor).to be :earl_gray
  end
  
  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end

  it 'came from China' do
    pending 'do not have an accessor yet'
    expect(tea.country_of_origin).to be 'China'
  end

  it 'has low caffeine'
  it 'should taste bitter'
  it 'has no sugar'
end
