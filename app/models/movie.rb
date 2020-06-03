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
    # array of all the review instances for this movie
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map(&:viewer)
  end

  def average_rating
    # sum ratings/num ratings
    reviews.sum {|review| review.rating} / reviews.count

  end

  def self.highest_rated
    self.all.max {|a,b| a.average_rating <=> b.average_rating}
  end
end
