
class Dessert
    attr_reader :name, :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    # should return an array of ingredients for the dessert
    def ingredients
        Ingredients.all.select {|ingredient| ingredient.dessert == self}
    end

    # should return a number totaling all the calories for 
    # all the ingredients included in that dessert
    def calories
        self.ingredients.map{|ingredient| ingredient.calorie}.reduce(:+)
        # Ingredients.all.select do |ingredient|
        #     ingredient.dessert == self
        # end.map do |ingredient|
        #     ingredient.calorie
        # end.reduce(:+)
    end

    # should return an array of all desserts
    def self.all
        @@all
    end
end

