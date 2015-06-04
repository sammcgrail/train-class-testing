require 'rspec'

class Trip
  ## create a constructor
  def initialize(train_name)
    @train_name = train_name
  end

  attr_reader :train_name
  # #functionally equivalent to below
  # def train_name
  #   '456'
  # end
end

describe Trip do
  it 'has a train number' do
    trip = Trip.new('456')
    expect(trip.train_name).to eq('456')
  end
  it 'has a different train nubmer' do
    trip = Trip.new('345')
    expect(trip.train_name).to eq('345')
  end
end
