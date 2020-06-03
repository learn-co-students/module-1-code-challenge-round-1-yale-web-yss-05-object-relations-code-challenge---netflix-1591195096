class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.movie==self}
  end

  def reviewers
    reviews.map{|review| review.viewer}.uniq
  end

  def average_rating # average will be float
    reviews.reduce(0.0){|sum, review| sum+review.rating}/reviews.length
  end

  def self.all
    @@all
  end

  def self.highest_rated
    @@all.max{|movie1, movie2| movie1.average_rating <=> movie2.average_rating}
  end

end
