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
    reviews.map{|review| review.viewer}
  end

  def average_rating
    if reviews.count == 0
      return 0
    end
    reviews.sum{|review| review.rating} / reviews.count.to_f
  end

  def self.all
    @@all
  end

  def self.highest_rated
    self.all.max{|movie1, movie2| movie1.average_rating <=> movie2.average_rating}
  end

end
