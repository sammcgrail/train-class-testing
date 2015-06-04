require 'rspec'

class Trip
  # use a let

  ## create a constructor
  def initialize(train_name, departure_time)
    @train_name = train_name
    @departure_time = departure_time
  end

  attr_reader :train_name, :departure_time
  # #functionally equivalent to below
  # def train_name
  #   @train_number
  # end
end

describe Trip do
  it 'has a train number' do
    train_name = '456'
    trip = Trip.new(train_name, '5:57PM')
    expect(trip.train_name).to eq(train_name)
  end
  it 'has a different train number' do
    train_name = '345'
    trip = Trip.new(train_name, '5:57PM')
    expect(trip.train_name).to eq(train_name)
  end
  it 'has a departure time' do
    depart_time = '5:57PM'
    trip = Trip.new('same train', depart_time)
    expect(trip.departure_time).to eq(depart_time)
  end
  it 'includes the am/pm' do
    depart_time = '5:57PM'
    trip = Trip.new('same train', depart_time)
    expect(trip.departure_time).to include("PM")
  end
  context 'parsing' do
    #pseudo 

  end

end
