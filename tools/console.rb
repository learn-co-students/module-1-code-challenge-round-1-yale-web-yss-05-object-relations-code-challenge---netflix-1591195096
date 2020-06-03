# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
m1 = Movie.new("Green Book")
m2 = Movie.new("Wolf of Wall Street")
m3 = Movie.new("Lady Bird")
m4 = Movie.new("The Call of the Wild")
m5 = Movie.new("A Dog's Journey")
m6 = Movie.new("Hunger Games")
m7 = Movie.new("Harry Potter #1")
m8 = Movie.new("Harry Potter #2")
m9 = Movie.new("Harry Potter #3")
m10 = Movie.new("Harry Potter #4")
m11 = Movie.new("Harry Potter #5")
m12= Movie.new("Harry Potter #6")
m13 = Movie.new("Harry Potter #7")

v1 = Viewer.new("a")
v2 = Viewer.new("b")
v3 = Viewer.new("c")
v4 = Viewer.new("d")
v5 = Viewer.new("e")
v6 = Viewer.new("f")
v7 = Viewer.new("g")
v8 = Viewer.new("h")
v9 = Viewer.new("i")
v10 = Viewer.new("j")
v11 = Viewer.new("k")
v12 = Viewer.new("l")

r1 = Review.new(v1, m1, 4.5)
r2 = Review.new(v2, m12, 4000000000)
r3 = Review.new(v3, m13, 4.9)
r4 = Review.new(v2, m12, 4.7)
r5 = Review.new(v4, m11, 3)
r6 = Review.new(v5, m10, 2)
r7 = Review.new(v6, m2, 2.8)
r8 = Review.new(v9, m3, 5)
r9 = Review.new(v5, m3, 5)
r10 = Review.new(v2, m1, 1.5)
r11 = Review.new(v12, m4, 1)
r12 = Review.new(v11, m5, 3.5)
r13 = Review.new(v11, m7, 3.7)
r14 = Review.new(v8, m6, 5)
r15 = Review.new(v7, m9, 2.5)
r16 = Review.new(v7, m1, 4.5)
r17 = Review.new(v11, m6, 3.5)
r18 = Review.new(v10, m4, 4.5)


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
