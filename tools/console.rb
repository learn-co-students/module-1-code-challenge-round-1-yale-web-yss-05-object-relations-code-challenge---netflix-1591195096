# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

v1=Viewer.new("Maura")
v2=Viewer.new("Kelly")

m1=Movie.new("Funny")
m2=Movie.new("RomCom")
m3=Movie.new("Horror")

r1=Review.new(v1, m1, 10)
r2=Review.new(v1, m2, 20)
r3=Review.new(v2, m1, 30)
r4=Review.new(v2, m3, 40)

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
