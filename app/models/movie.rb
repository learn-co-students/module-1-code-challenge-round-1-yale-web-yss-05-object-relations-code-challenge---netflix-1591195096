class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    reviews.collect(&:viewer)
  end

  def average_rating
    reviews.sum(&:rating) / reviewers.length
  end

  # Class Methods
  def self.highest_rated
    Review.all.sort_by(&:rating).last
  end

  def self.all
    @@all
  end

end
