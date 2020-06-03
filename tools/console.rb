# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

m1 = Movie.new("Gone With The Wind")
m2 = Movie.new("Space Jam")
m3 = Movie.new("Titanic")
m4 = Movie.new("Titanic 2: Iceberg's Revenge")
m5 = Movie.new("Planet Earth")

v1 = Viewer.new("Abe")
v2 = Viewer.new("Ben")
v3 = Viewer.new("Chad")
v4 = Viewer.new("Daniel")
v5 = Viewer.new("Evan")

r1 = Review.new(v1, m1, 4)
r2 = Review.new(v1, m2, 2)
r3 = Review.new(v1, m3, 10)
r4 = Review.new(v2, m4, 1)
r5 = Review.new(v2, m5, 3)
r6 = Review.new(v3, m1, 8)
r7 = Review.new(v3, m2, 7)
r8 = Review.new(v4, m1, 6)
r9 = Review.new(v5, m3, 5)
r10 = Review.new(v5, m5, 0)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
