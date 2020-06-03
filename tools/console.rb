# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("tarantinofan1992")
v2 = Viewer.new("mothcub")
v3 = Viewer.new("mrwiseauguy")
v4 = Viewer.new("xX_D3M0N5L4Y3R_Xx")
v5 = Viewer.new("floccinaucinihilipilification")

pulp = Movie.new("Pulp Fiction")
orange = Movie.new("A Clockwork Orange")
arrival = Movie.new("Arrival")
room = Movie.new("The Room")
pan = Movie.new("Pan's Labyrinth")

#I'm having my reviews be on a scale of 1 to 5 stars.

v1.rate_movie(pulp, 5)
v1.rate_movie(orange, 4)
v1.rate_movie(arrival, 3.5)
v1.rate_movie(room, 1)
v1.rate_movie(pan, 4.5)

v2.rate_movie(pulp, 3)
v2.rate_movie(orange, 2)
v2.rate_movie(arrival, 4)
v2.rate_movie(room, 2)
v2.rate_movie(pan, 5)

v3.rate_movie(room, 5)

v4.rate_movie(pulp, 4)
v4.rate_movie(orange, 3.5)
v4.rate_movie(arrival, 4.5)
v4.rate_movie(room, 1)
v4.rate_movie(pan, 5)

v5.rate_movie(pulp, 4)
v5.rate_movie(orange, 4.5)
v5.rate_movie(arrival, 4)
v5.rate_movie(room, 1.5)
v5.rate_movie(pan, 4)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
