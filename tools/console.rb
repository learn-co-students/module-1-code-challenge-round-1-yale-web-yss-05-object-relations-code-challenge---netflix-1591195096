# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("v1")
v2 = Viewer.new("v2")
v3 = Viewer.new("v3")

m1 = Movie.new("m1")
m2 = Movie.new("m2")
m3 = Movie.new("m3")

r1 = Review.new(v1, m1, 10)
r2 = Review.new(v1, m2, 5)
r3 = Review.new(v2, m1, 9)
r4 = Review.new(v3, m1, 8)
r5 = Review.new(v1, m3, 10)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
