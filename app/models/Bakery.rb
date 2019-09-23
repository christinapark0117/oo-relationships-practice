class Bakery
    attr_reader :name 
   
    @@all = [] 
    
    def initialize (name) 
        @name = name 
        @@all << self 
    end
        
# should return an array of ingredients for the bakery's desserts
    def ingredients
        Ingredients.all.select{|ingredient| ingredient.bakery == self} 
        #go to the Ingredients class and go through everything in the array
        #select the ingredients that matches the bakery and return the array
    end

# should return an array of desserts the bakery makes
    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
        #go to Dessert class go through the all array
        #selects everything that has the same instance of bakery
    end

# should return a number totaling the average number of calories 
# for the desserts sold at this bakery
    def average_calories
        Ingredients.all.map{|ingredient| ingredient.calorie}.reduce(:+)/Ingredients.all.length
    end

# should return an array of all bakeries
    def self.all
        @@all
    end

# should return a string of names for ingredients for the bakery
    def shopping_list
       self.ingredients.map{|ingredient| ingredient.name}.to_s
    end
end
