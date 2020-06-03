# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
avengers = Movie.new("Avengers Endgame")
elf = Movie.new("Elf")
stepbrothers = Movie.new("Stepbrothers")
cats = Movie.new("Cats")

kike = Viewer.new("Kike Valencia")
nico = Viewer.new("Nico Valencia")

review1 = Review.new(kike, avengers, 10)
review2 = Review.new(kike, elf, 6)
review3 = Review.new(kike, stepbrothers, 8)
review4 = Review.new(nico, avengers, 9)
review5 = Review.new(nico, elf, 7)
review6 = Review.new(nico, stepbrothers, 9)




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
