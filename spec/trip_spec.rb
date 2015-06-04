require 'rspec'

class Trip
  attr_reader :train_name, :departure_time
  ## create a constructor
  def initialize(train_name, departure_time)
    @train_name = train_name
    @departure_time = departure_time
  end


  # #functionally equivalent to below
  # def train_name
  #   @train_number
  # end

  # def self.parse(trip_str)
  #
  # end

  ## OR

  class << self
    def parse(trip_str)
      possible_train_name = /Train ([0-9]+)/.match(trip_str)[1]
      Trip.new(possible_train_name, 'something')
    end
  end

end
#
# describe Trip do
#   # use a let
#   it 'has a train number' do
#     train_name = '456'
#     trip = Trip.new(train_name, '5:57PM')
#     expect(trip.train_name).to eq(train_name)
#   end
#   it 'has a different train number' do
#     train_name = '345'
#     trip = Trip.new(train_name, '5:57PM')
#     expect(trip.train_name).to eq(train_name)
#   end
#   it 'has a departure time' do
#     train_name = '456'
#     depart_time = 7
#     trip = Trip.new(train_name, (depart_time * 2))
#     expect(trip.departure_time).to eq(depart_time)
#   end
#   it 'includes the am/pm' do
#     depart_time = '5:57PM'
#     trip = Trip.new('same train', depart_time)
#     expect(trip.departure_time).to include("PM")
#   end
#   context 'parsing' do
#     it 'finds the train number' do
#       trip = Trip.parse('Train 567')
#       expect(trip.train_name).to eq('567')
#     end
#   end
# end

puts Trip.new('456', '4:50PM').to_a
