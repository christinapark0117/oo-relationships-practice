
class Ingredients
    attr_reader :name, :dessert, :calorie, :bakery
    @@all = []

    def initialize(name, dessert, calorie, bakery)
        @name = name
        @dessert = dessert
        @calorie = calorie
        @bakery = bakery
        @@all << self
    end


    # should return an array of all ingredients
    def self.all
        @@all
    end


    # should take a string argument return an array of all ingredients that 
    # include that string in their name
    def self.find_all_by_name(ingredient)
        #searching all the ingredients 
        #by going through everything in the @@all array
        #then select and filter everything that is not passed in the parameter.
        #return anything in the array of strings with the parameter.
        @@all.select do |ingredientss|
            ingredientss.name.include?(ingredient)
        end
    end
end