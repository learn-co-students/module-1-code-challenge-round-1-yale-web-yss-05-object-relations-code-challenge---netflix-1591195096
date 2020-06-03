# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("Nicole")
v2 = Viewer.new("Bernice")
v3 = Viewer.new("Albert")
v4 = Viewer.new("Chloe")

m1 = Movie.new("movie1")
m2 = Movie.new("movie2")
m3 = Movie.new("movie3")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v1, m2, 8)
r3 = Review.new(v2, m1, 8)
r4 = Review.new(v3, m1, 9)
r5 = Review.new(v4, m3, 5)
r6 = Review.new(v2, m3, 7)






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
