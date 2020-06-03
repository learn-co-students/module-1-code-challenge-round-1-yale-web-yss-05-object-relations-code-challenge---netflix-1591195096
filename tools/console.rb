# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1 = Viewer.new("username1")
v2 = Viewer.new("adil11111")
v3 = Viewer.new("movieviewer123")

m1 = Movie.new("Avatar")
m2 = Movie.new("Taken")
m3 = Movie.new("Miss Doubtfire")

r1 = Review.new(v1,m1,9)
r2 = Review.new(v2,m3,5)
r3 = Review.new(v3,m2,7)
r4 = Review.new(v1,m3,6)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
