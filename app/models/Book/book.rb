
require "pry"

class Book
    attr_reader :title, :author, :bookstore, :pages
    @@all = []

    def initialize(title, author, bookstore, pages)
        @title = title
        @author = author
        @bookstore = bookstore
        @pages = pages
        @@all << self
    end

   
    def self.series(title)
        @@all.select do |book|
            book.title.include?(title)
         end
    end
    

    def self.avg_pg_count
        #returns interger of av pages from all books
        @@all.map do |book|
            book.pages
        end.reduce(:+)/self.all.length
        
    end

    def self.all
        @@all
    end

end