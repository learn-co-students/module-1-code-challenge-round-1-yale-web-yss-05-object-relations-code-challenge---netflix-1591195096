class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    save 
  end

  def save
    self.class.all << self 
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.map{|review| review.viewer}
  end
# helper method for finding the average rating, 
# adds up all ratings for a given movie
  def total_ratings
    reviews.sum{|review| review.rating}
  end

  def average_rating
    self.total_ratings / reviews.count
  end

  def self.highest_rated
    Movie.all.max{|movie_a, movie_b| movie_a.average_rating <=> movie_b.average_rating}
  end

end
