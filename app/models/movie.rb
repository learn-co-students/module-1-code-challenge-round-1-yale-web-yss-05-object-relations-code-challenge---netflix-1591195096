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
    Review.all.select{|review| review.movie == self}
  end
  
  def reviewers
    reviews.map{|review| review.viewer}
  end

  #a problem could arise, where the averaging two integers we get a float value
  # and then it's automatically rounded down to a lower number. could attempt to solve
  # this by turning ratings into floats beforehand, but not specified.
  def average_rating
    total_rating = reviews.map{|review| review.rating}.sum{|rating| rating}
    average_rating = total_rating/reviews.length
  end

  def self.highest_rated
    self.all.max_by{|movie| movie.average_rating}
  end

end
