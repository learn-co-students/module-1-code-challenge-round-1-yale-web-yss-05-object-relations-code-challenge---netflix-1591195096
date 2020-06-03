# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

view1 = Viewer.new("view1")
view2 = Viewer.new("view2")
view3 = Viewer.new("view3")
view4 = Viewer.new("view3")


mov1 = Movie.new("mov1")
mov2 = Movie.new("mov2")
mov3 = Movie.new("mov3")
mov4 = Movie.new("mov4")


rev1 = Review.new(view1, mov1, 14)
rev2 = Review.new(view2, mov1,14)
rev3 = Review.new(view4, mov1, 14)
#mov1 has average rating 14 

rev4 = Review.new(view3, mov2, 8)
rev5 = Review.new(view2, mov2, 19)
rev5 = Review.new(view1, mov2, 20)
#mov2 has average rating 15.66666

rev6 = Review.new(view2, mov3, 0)
#mov3 has average rating 0

#mov4 has average rating 0



# # ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
