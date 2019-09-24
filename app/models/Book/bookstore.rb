
require "pry"

class Bookstore

    attr_reader :name
    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end


    def quantity_by_author(name)
        inventory = Book.all.select do |book| 
            book.author.name == name
        end 
        match = inventory.select do |book|
            book.bookstore == self 
        end 
        match
    end

end
