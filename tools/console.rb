# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mv1 = Movie.new("Humdingers Hoopty Doopty")
mv2 = Movie.new("Star Wars")
mv3 = Movie.new("Jaws")

puts "\nMovie:"
p "mv1: #{mv1} & #{mv1.title}"
p "all movies: #{Movie.all}"

vwr1 = Viewer.new("clint_clark")
vwr2 = Viewer.new("CorgyDorgy")
vwr3 = Viewer.new("St3v3Cargill")

puts "\nViewer:"
p "vwr1: #{vwr1} & #{vwr1.username}"
p "all viewers: #{Viewer.all}"

rvw1 = Review.new(vwr1,mv1,10)
rvw2 = Review.new(vwr1,mv2,8)
rvw3 = Review.new(vwr2,mv1,10)

puts "\nReview:"
p "rvw1: #{vwr1} & #{rvw1.viewer} & #{rvw1.movie} & #{rvw1.rating}"
p "all reviews: #{Review.all}"
puts "\n"

p "mv1 reviews: #{mv1.reviews}"
p "vwr1 reviews: #{vwr1.reviews}"
puts "\n"
p "mv1 reviewers: #{mv1.reviewers}"
p "vwr1 reviewed movies: #{vwr1.reviewed_movies}"
puts "\n"
p "vwr1 reviewed_movie?(mv1): #{vwr1.reviewed_movie?(mv1)}"
p "vwr1 reviewed_movie?(mv3): #{vwr1.reviewed_movie?(mv3)}"
puts "\n"
p "vwr1 rate_movie(mv1): #{vwr1.rate_movie(mv1,12)} (I mean seriously nothing can touch it)"
p "vwr1 rate_movie(mv3): #{vwr1.rate_movie(mv3,7)}"
puts "\n"
p "mv1 average_rating: #{mv1.average_rating} (I mean SERIOUSLY nothing can touch it)"
p mv3.reviews
p "mv3 average_rating: #{mv3.average_rating}"

puts "\n"
p "top rated movie.title:  #{Movie.highest_rated.title} (why are we even asking at this point??)"

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
# binding.pry
0
