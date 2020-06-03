class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username

    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.collect(&:movie)
  end

  def reviewed_movie?(movie)
    reviewed_movies.find{|mov| mov == movie}!= nil
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating) if (!reviewed_movie?(movie))
    change_rating(movie, rating) #Change rating if the movie has already been reviewed
  end

  def change_rating(movie,rating)
    reviews.find{|review| review.movie == movie}.rating = rating
  end

  # Class Methods
  def self.all
    @@all
  end
  
end
