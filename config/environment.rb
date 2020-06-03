require 'pry'
# require the Bundler module
require 'bundler/setup'

# require all gems defined in the Gemfile
Bundler.require

# require all files in the top-level app directory
require_rel '../app'

v1 = Viewer.new("User1")
v2 = Viewer.new("User2")
v3 = Viewer.new("User3")
v4 = Viewer.new("User4")

m1 = Movie.new("Movie1")
m2 = Movie.new("Movie2")
m3 = Movie.new("Movie3")
m4 = Movie.new("Movie4")
m5 = Movie.new("Movie5")

r1 = Review.new(viewer: v1, movie: m1, rating: 3)
r2 = Review.new(viewer: v1, movie: m2, rating: 4)
r3 = Review.new(viewer: v2, movie: m1, rating: 5)
r4 = Review.new(viewer: v3, movie: m3, rating: 7)
r5 = Review.new(viewer: v3, movie: m4, rating: 8)
r6 = Review.new(viewer: v4, movie: m5, rating: 9)


binding.pry 
0