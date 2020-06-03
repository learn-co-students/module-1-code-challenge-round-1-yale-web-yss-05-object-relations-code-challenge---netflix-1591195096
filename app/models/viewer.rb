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
    #selects only reviews tied to this viewer
    Review.all.select{|one_review| one_review.viewer == self}
  end 

  def reviewed_movies 
    #turns list of reviews into list of associated movies
    reviews.map(&:movie).uniq 
  end 

  def find_review_by_movie(movie_input)
    #helper method to locate viewer's review of specific movie, nil if it doesn't exist
    reviews.find{|one_review| one_review.movie == movie_input}
  end 

  def reviewed_movie?(movie_input)
    #output true/false depending on whether review tied to input movie exists 
    if find_review_by_movie(movie_input)
      return true 
    else return false 
    end 
  end 

  def rate_movie(movie_input, rating_input)
    #either updates existing review rating, or makes new review 
    if reviewed_movie?(movie_input)
      find_review_by_movie(movie_input).rating = rating_input
    else Review.new(self, movie_input, rating_input)
    end 
  end 
end
