# Trip
# #listing
# returns the listing object for the trip
# #guest
# returns the guest object for the trip
# .all
# returns an array of all trips



class Trip
    attr_reader :city_name
    attr_accessor :listing
    @@all = []

    def initialize(listing, city_name)
        @listing = listing
        @city_name = city_name
        @@all << self
    end

end