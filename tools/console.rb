# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Zootopia")
m2 = Movie.new("Roma")
m3 = Movie.new("Sparta")
m4 = Movie.new("Avengers")
m5 = Movie.new("La Luna")

v1 = Viewer.new("Dennis")
v2 = Viewer.new("Aud")
v3 = Viewer.new("Geo")
v4 = Viewer.new("Brian")
v5 = Viewer.new("Jack")

r1 = Review.new(v1, m1, 12)
r2 = Review.new(v1, m4, 5)
r3 = Review.new(v3, m5, 4)
r4 = Review.new(v4, m2, 10)
r5 = Review.new(v2, m1, 6)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
