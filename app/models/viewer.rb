# #### Viewer

# - `Viewer#initialize(username)`
#   - `Viewer` is initialized with a username (string)
#   - username **can be** changed after the Viewer is initialized
# - `Viewer#username`
#   - returns the Viewer's username
# - `Viewer.all`
#   - returns an array of all the Viewer instances that have been initialized

# #### Viewer

# - `Viewer#reviews`
#   - returns an array of `Review` instances associated with the `Viewer` instance.
# - `Viewer#reviewed_movies`
#   - returns an array of `Movie` instances reviewed by the `Viewer` instance.

# #### Viewer

# - `Viewer#reviewed_movie?(movie)`
#   - a `Movie` instance is the only argument
#   - returns `true` if the `Viewer` has reviewed this `Movie` (if there is a `Review` instance that has this `Viewer` and `Movie`), returns `false` otherwise
# - `Viewer#rate_movie(movie, rating)`
#   - a `Movie` instance and a rating (number) are passed in as arguments
#   - if the `Viewer` instance and the passed `Movie` instance are _not_ already associated, this method should create a new `Review` instance
#   - if this `Viewer` has already reviewed this `Movie`, assigns the new rating to the existing `Review` instance
class Viewer
  attr_accessor :username

  @@all = []

  # Viewer initialized with username, username can be changed after initialized
  def initialize(username)
    @username = username
    self.class.all << self
  end

  # returns an array of all the Viewer instances that have been initialized
  def self.all
    @@all
  end
  
  # Returns an array of all the `Review` instances for the `Viewer' instance
  def reviews
    Review.all.select {|review| review.viewer == self}
  end

  # Returns an array of all of the `Movie` instances that reviewed the `Viewer' instance
  def reviewed_movies
    reviews.map {|review| review.movie}
  end

  # Returns true if 'Viewer' has reviewed this 'Movie'
  def reviewed_movie?(movie)
    Review.all.any? {|review| review.viewer == self && review.movie == movie}
  end

  # Finds review instance associated with viewer, given movie 
  def find_review(movie)
    Review.all.find {|review| review.viewer == self && review.movie == movie}
  end

  # Update or create new rating, given movie and rating.
  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      find_review(movie).rating = rating
    else 
      Review.new(self, movie, rating)
    end
  end

end
