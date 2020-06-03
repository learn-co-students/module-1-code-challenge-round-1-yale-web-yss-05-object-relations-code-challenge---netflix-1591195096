require 'pry'
class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select {|r| r.viewer == self}
  end

  def reviewed_movies 
    reviews.map {|r| r.movie }
  end 

  def reviewed_movie?(movie)
    self.reviews.include?(movie)
  end 

  def rate_movie(movie, rating)
    if reviews.include?(self) && reviews.include?(movie)
    # if reviews.any? {|r| r.viewer == self} && reviews.any? {|r| r.movie == movie}
      self.rating == rating 
    else
      Review.new(self, movie, rating)
    end 
  end 

end
