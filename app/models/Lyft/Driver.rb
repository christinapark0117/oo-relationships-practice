#### Driver

# - #passengers
#   - returns all passengers a driver has had
# - #rides
#   - returns all rides a driver has made
# - .mileage_cap(distance)
#   - takes an argument of a distance (float) and returns all drivers who have exceeded that mileage


class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def rides
        Ride.all.select{|ride| ride.driver == self}
    end

    def passengers
        self.rides.map{|ride| ride.passenger}
    end

    def self.all
        @@all
    end

    def total_distance
        self.rides.map { |ride| ride.distance}.sum
    end

    # takes an argument of a distance (float) and returns all drivers who have exceeded that mileage

    def self.mileage_cap(distance)
        self.all.select{ |driver| driver.total_distance > distance}
    end


end