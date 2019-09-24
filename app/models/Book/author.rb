require "pry"

class Author
    
    attr_reader :name
    @@all = []

    def initialize(name)
    @name = name
    @@all << self
    end

    def self.all
        @@all
    end 

    def book
    Author.all.select{|book| book.author == self}
    end
    

    def self.avg_books
        Book.all.count/self.all.length
    end
end
