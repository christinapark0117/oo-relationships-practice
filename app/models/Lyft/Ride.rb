#### Ride


# - .average_distance
#   - should find the average distance of all rides

#   your models are passengers, drivers, rides
# a passenger has many rides
# a driver has many rides
# a ride belongs to a passenger and a driver
# a ride is initialized with a distance (as a float)

class Ride

#   #passenger
#   returns the passenger object for that ride
#   #driver
#   returns the driver object for that ride

    attr_reader :driver, :passenger, :distance
    #ride in the middle of passenger and driver
    #therefore has the readers for the driver, the passenger 
    #and the distance

    @@all = []

    def initialize(driver, passenger, distance)
        @driver = driver
        @passenger = passenger
        @distance = distance.to_f
        #.to_f means to turn anything passed in to a  float
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        @@all.map{|ride| ride.distance}.reduce(:+)/@@all.length
    end

end