# Listing
# #guests
# returns an array of all guests who have stayed at a listing
# #trips
# returns an array of all trips at a listing
# #trip_count
# returns the number of trips that have been taken to that listing
# .all
# returns an array of all listings
# .find_all_by_city(city)
# takes an argument of a city name (as a string) and returns all the listings for that city
# .most_popular
# finds the listing that has had the most trips




class Listings
    attr_reader :guest, :listings 
    @@all = []

    def initialize(guest, listings)
        @guest = guest
        @listings = listings
        @@all << self
    end

    

    def self.all
        @@all
    end

    def self.find_all_by_city

    end

    def self.most_popular

    end
end