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
    Review.all.select {|review| review.viewer == self}
  end 

  def reviewed_movies 
    self.reviews.map {|review| review.movie}
  end 

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end 

  def rate_movie(movie, rating)
    if reviewed_movie?(movie) == true 
      self.reviews.find{|review| review.movie == movie}.rating = rating 
    else 
      Review.new(viewer: self, movie: movie, rating: rating)
    end 
  end 
  
end
