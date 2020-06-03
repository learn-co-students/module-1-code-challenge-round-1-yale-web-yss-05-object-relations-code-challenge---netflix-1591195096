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
    reviews.map{|review| review.viewer}.uniq
  end

  def ratings
    reviews.map{|review| review.rating}
  end
  def average_rating
    ratings.sum() / ratings.length()
  end

  def self.highest_rated
    # movie_max = @@all[0]
    # max_rating = 0
    # @@all.each do |movie|
    #  if movie.average_rating > max_rating
    #   max_rating = movie.average_rating
    #   movie_max = movie
    #  end
    # end
    # movie_max
    @@all.max_by {|movie| movie.average_rating}
  end

end
