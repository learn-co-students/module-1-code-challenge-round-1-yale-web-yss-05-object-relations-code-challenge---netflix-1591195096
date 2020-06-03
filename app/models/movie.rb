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
    Review.all.select{|r|r.movie == self}
  end

  def reviewers
    reviews.map{|r|r.viewer}
  end

  def average_rating
    # reviews.map{|r|r.rating}.sum / reviews.count
    reviews.sum{|r|r.rating} / reviews.count
  end

  def self.highest_rated
    Movie.all.max_by{|m|m.average_rating}
  end

end
