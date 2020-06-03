# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

avatar = Movie.new("Avatar")
dunkirk = Movie.new("Dunkirk")
inception = Movie.new("Inception")
blade_runner = Movie.new("Blade Runner")

vidhi = Viewer.new("Vidhi")
sylwia = Viewer.new("Sylwia")
alex = Viewer.new("Alex")

r1 = Review.new(vidhi, avatar, 2)
r2 = Review.new(sylwia, avatar, 1)
Review.new(alex, avatar, 5)
Review.new(vidhi, dunkirk, 5)
Review.new(sylwia, dunkirk, 5)
Review.new(sylwia, blade_runner, 10)
Review.new(alex, blade_runner, 9)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
