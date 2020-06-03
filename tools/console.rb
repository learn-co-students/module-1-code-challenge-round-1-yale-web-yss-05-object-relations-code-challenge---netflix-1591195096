# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# there's a lot that could be added to make this code neater. If the application was more extensive,
# I would use modules, as the classes share similar functionality. However, because this particular assignment
# is fairly short, it would be more hassle than benefit trying to include modules. Moreover, the task
# doesn't specify how we should treat fringe cases (for example, now the same user can leave several reviews
# for the same film, which should not be allower) - if this was a more elaborate project I was building,
# I'd attempt to treat them. In the case that fringe cases would be present, additional
# uniq should be added here and there.

movie1 = Movie.new("Snatch")
movie2 = Movie.new("Godfather")
movie3 = Movie.new("Goodfellas")

viewer1 = Viewer.new("Viewer1")
viewer2 = Viewer.new("Viewer2")
viewer3 = Viewer.new("Viewer3")

review1 = Review.new(viewer1, movie1, 9.5)
review2 = Review.new(viewer2, movie1, 8)
review3 = Review.new(viewer3, movie2, 5)
review4 = Review.new(viewer1, movie2, 10)
review5 = Review.new(viewer3, movie3, 4)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
