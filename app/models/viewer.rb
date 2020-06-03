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

  # Invoke the .uniq method because a Viewer may review same movie multiple times
  def reviewed_movies
    self.reviews.map {|review| review.movie}.uniq
  end 

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end 

  # Helper method to find a Viewer's review for a provided movie
  # Precondition: Viewer has already reviewed the movie passed as parameter 
  def find_movie_review(movie)
    self.reviews.find {|review| review.movie == movie}
  end 

  # If Viewer instance already reviewed the movie instance passed as parameter, update the rating
  # If not, create a new instance of Review associated with this Viewer
  def rate_movie(movie, rating)
    self.reviewed_movie?(movie) ? self.find_movie_review(movie).rating = rating : Review.new(self, movie, rating)
  end 
end
