require 'rspec'

class Trip
  # use a let

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
    train_name = '456'
    trip = Trip.new('456')
    expect(trip.train_name).to eq(train_name)
  end
  it 'has a different train number' do
    train_name = '345'
    trip = Trip.new('345')
    expect(trip.train_name).to eq(train_name)
  end
end
