# #### Movie

# - `Movie#initialize(title)`
#   - `Movie` is initialized with a title (string)
#   - title **can be** changed after the `Movie` is initialized
# - `Movie#title`
#   - returns the `Movie`'s title
# - `Movie.all`
#   - returns an array of all the `Movie` instances that have been initialized

# #### Movie

# - `Movie#reviews`
#   - returns an array of all the `Review` instances for the `Movie`.
# - `Movie#reviewers`
#   - returns an array of all of the `Viewer` instances that reviewed the `Movie`.

# #### Movie

# - `Movie#average_rating`
#   - returns the average of all ratings for the `Movie` instance
#   - to average ratings, add all ratings together and divide by the total number of ratings.
# - `Movie.highest_rated`
#   - returns the `Movie` instance with the highest average rating.


class Movie
  attr_accessor :title

  @@all = []

  # Movie` is initialized with a title, title can changed after initialized
  def initialize(title)
    @title = title
    self.class.all << self
  end

  # Returns an array of all the `Movie` instances that have been initialized
  def self.all
    @@all
  end

  # Returns an array of all the `Review` instances for the `Movie`.
  def reviews
    Review.all.select {|review| review.movie == self}
  end

  # Returns an array of all of the `Viewer` instances that reviewed the `Movie`.
  def reviewers
    reviews.map {|review| review.viewer}
  end

  # Returns true if movie has been reviewed
  def reviewed?
    Review.all.any? {|review| review.movie == self}
  end

  # Returns the average of all ratings for the `Movie` instance
    # Make it return 0 if no reviews to avoid divide by 0 
  def average_rating
    if self.reviewed?
      reviews.sum {|review| review.rating}.to_f / reviews.size
    else
      return 0
    end
  end

  # Returns `Movie` instance with the highest average rating.
  def self.highest_rated
    all.max_by {|movie| movie.average_rating}
  end

end