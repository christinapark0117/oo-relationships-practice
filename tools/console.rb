require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end
b1 = Bakery.new("Baked and Wired")
b2 = Bakery.new("Baked and Wired")
d1= Dessert.new("Chocolate Cake", b1)
d2 = Dessert.new("Red Velvet Cake", b1)
d3 = Dessert.new("Carrot Cake", b1)
d4= Dessert.new("Vanilla Cupcake", b1)
d5 = Dessert.new("White Chocolate Cake", b1)
i1 = Ingredients.new("Flour", d1,  400, b1)
i2 = Ingredients.new("Chocolate Chips", d2, 550, b1)
i3 = Ingredients.new("Carrot", d3, 500, b1)
i4 = Ingredients.new("Vanilla Beans", d1, 450, b1)

binding.pry