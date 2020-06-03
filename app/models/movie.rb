class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|review| review.viewer}
  end

  def average_rating
    reviews.sum{|review| review.rating} / reviews.size.to_f
  end

  def self.highest_rated
    self.all.max_by {|movie| movie.average_rating}
  end

end

# Movie#average_rating
# returns the average of all ratings for the Movie instance
# to average ratings, add all ratings together and divide by the total number of ratings.
# Movie.highest_rated
# returns the Movie instance with the highest average rating.
