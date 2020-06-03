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

  # Returns array of Viewer instances that reviewed this Movie
  # Invoke .uniq to remove duplicate Viewer instances that reviewed this instance of Movie multiple times
  def reviewers
    self.reviews.map {|review| review.viewer}.uniq
  end 

  # Returns sum of all ratings for this movie instance
  def total_rating 
    self.reviews.inject(0) {|total, review| total + review.rating}
  end

  # Returns number of reviews for this Movie instance
  def num_reviews
    self.reviews.size
  end 

  # Round average rating to two decimal points
  # Note decision to return 0 as the rating for Movies with no Reviews
  def average_rating 
    return 0 if self.num_reviews == 0
    (self.total_rating / self.num_reviews.to_f).round(2)
  end 

  #Returns the Movie instance with highest average rating
  def self.highest_rated
    self.all.max_by {|movie| movie.average_rating}
  end 

end
