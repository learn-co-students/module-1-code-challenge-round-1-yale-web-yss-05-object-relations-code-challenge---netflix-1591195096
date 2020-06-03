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
    Review.all.select{|review| review.viewer == self}
  end
  
  def reviewed_movies
    reviews.map{|review| review.movie}.uniq
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end
  
  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      #this is the simplified version of the code in the comments below.
      #could return the review instance, instead of just the new rating, but not specified.
      reviews.select{|review| review.movie == movie}[0].rating = rating
      #the_rated_movie = Review.all.select{|review| review.movie == movie && review.viewer == self}
      #since this gives me an array with just that one movie, want to select the 0th element to have access to .rating
      #the_rated_movie[0].rating = rating
      #the_rated_movie
    else
      Review.new(self, movie, rating)
    end
  end    
end
