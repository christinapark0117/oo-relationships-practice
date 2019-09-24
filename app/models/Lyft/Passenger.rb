#### Passenger

# - #drivers
#   - returns all drivers a passenger has ridden with
# - #rides
#   - returns all rides a passenger has been on
# - #total_distance
#   - should calculate the total distance the passenger has travelled with the
#     service
# - .premium_members
#   - should find all passengers who have travelled over 100 miles with the service

class Passenger
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all = []
    end

# - #rides
#   - returns all rides a passenger has been on
    
    def rides
        Ride.all.select do
            |ride| ride.passenger == self
        end
    end


# - #drivers
#   - returns all drivers a passenger has ridden with
    
    def drivers
        self.rides.map {|ride| ride.driver }
    end

    def self.all
        @@all
    end

    def total_distance
        self.rides.map { |ride| ride.distance }.reduce(:+)
        #can use .sum instead of .reduce
    end

    def self.premium_members
        self.all.select {|passenger| passenger.total_distance > 100}
    end

end