# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Shawshank Redemption")
m2 = Movie.new("Pulp Fiction")
m3 = Movie.new("Harry Potter")
m4 = Movie.new("Rain Man")

v1 = Viewer.new("user1")
v2 = Viewer.new("user2")
v3 = Viewer.new("user3")
v4 = Viewer.new("user4")

r1 = Review.new(v1, m2, 10)
r2 = Review.new(v2, m3, 5)
r3 = Review.new(v3, m2, 7)
r4 = Review.new(v4, m1, 9)
r5 = Review.new(v1, m3, 7)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
