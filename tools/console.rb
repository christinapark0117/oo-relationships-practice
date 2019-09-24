require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


p1 = Passenger.new("Christina")
p2 = Passenger.new("Grace")
p3 = Passenger.new("Sunny")

d1 = Driver.new("Simon")
d2 = Driver.new("Min")
d3 = Driver.new("Brett")

r1 = Ride.new(d1, p1, 8)
r2 = Ride.new(d1, p2, 24)
r3 = Ride.new(d3, p2, 14.5)
r4 = Ride.new(d2, p3, 7.6)
r5 = Ride.new(d3, p1, 6)


binding.pry

##Bakery Lab
# b1 = Bakery.new("Baked and Wired")
# b2 = Bakery.new("Baked and Wired")
# d1= Dessert.new("Chocolate Cake", b1)
# d2 = Dessert.new("Red Velvet Cake", b1)
# d3 = Dessert.new("Carrot Cake", b1)
# d4= Dessert.new("Vanilla Cupcake", b1)
# d5 = Dessert.new("White Chocolate Cake", b1)
# i1 = Ingredients.new("Flour", d1,  400, b1)
# i2 = Ingredients.new("Chocolate Chips", d2, 550, b1)
# i3 = Ingredients.new("Carrot", d3, 500, b1)
# i4 = Ingredients.new("Vanilla Beans", d1, 450, b1)

##Lyft
# p1 = Passenger.new("Christina")
# p2 = Passenger.new("Grace")
# p3 = Passenger.new("Sunny")

# d1 = Driver.new("Simon")
# d2 = Driver.new("Min")clas
# d3 = Driver.new("Brett")

# r1 = Ride.new(d1, p1, 8)
# r2 = Ride.new(d1, p2, 24)
# r3 = Ride.new(d3, p2, 14.5)
# r4 = Ride.new(d2, p3, 7.6)
# r5 = Ride.new(d3, p1, 6)


# bs1 = Bookstore.new("B&N")
# bs2= Bookstore.new("Borders")
# a1 = Author.new("Mark Twain")
# a2 = Author.new("JK Rowling")
# bk1 = Book.new("Huck Finn", a1, bs1, 250)
# bk2 = Book.new("HP SS", a2, bs1, 463)
# bk3 = Book.new("HP CS", a2, bs2, 527)
# bk4 = Book.new("HP PA", a2, bs1, 553)
# bk5 = Book.new("Tom Sawyer", a1, bs2, 302)
# bk6 = Book.new("HP GF", a2, bs2, 1080)
