# Guest
# #listings
# returns an array of all listings a guest has stayed at
# #trips
# returns an array of all trips a guest has made
# #trip_count
# returns the number of trips a guest has taken
# .all
# returns an array of all guests
# .pro_traveller
# returns an array of all guests who have made over 1 trip
# .find_all_by_name(name)
# takes an argument of a name (as a string), 
# returns the all guests with that name



class Guest
    attr_reader :guest_name
    @@all = []

    def initialize(guest_name)
        @guest_name = guest_name
        @all << self
    end

    def self.all
        @@all
    end

    def self.pro_traveller

    end

    def self.find_all_by_name(name)

    end




end
