class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
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

  def ratings
    reviews.map{|review| review.rating}
  end

  def average_rating
    ratings.sum / ratings.length
  end

  def self.highest_rated
    self.all.sort_by{|movie| movie.average_rating}.last
  end


end
