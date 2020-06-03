# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Baby's Day Out")
m2 = Movie.new("Chicken")
m3 = Movie.new("Noodle")

m2.title = "bugs bunny"

v1 = Viewer.new("Larry")
v2 = Viewer.new("Larissa")
v3 = Viewer.new("Amy")
v4 = Viewer.new("Liam")

r1 = Review.new(v4, m1, 10)
r2 = Review.new(v4, m2, 5)
r3 = Review.new(v1, m1, 1)
r4 = Review.new(v4, m3, 8) 
r5 = Review.new(v4, m1, 100)


print "For Baby's Day Out: \nReviews: #{m1.reviews} \n"
print "Rvers: #{m1.reviewers} \n"
print "Avg rating: #{m1.average_rating} \n\n"
print "Highest rated movie: #{Movie.highest_rated} \n\n"


print "For Liam: \nReviews: #{v4.reviews}\n"
print "Movies: #{v4.reviewed_movies}\n"
print "reviewed baby's day out?: #{v4.reviewed_movie?(m1)}\n"




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
