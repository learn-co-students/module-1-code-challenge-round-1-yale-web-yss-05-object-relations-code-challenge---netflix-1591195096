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
    Review.all.select{|rev| rev.viewer == self}
  end 

  def reviewed_movies 
    self.reviews.map{|rev| rev.movie}
  end 

  def reviewed_movie?(movie)
    self.reviewed_movies.include?(movie)
  end 

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      my_review = reviews.find{|rev| rev.movie == movie}
      my_review.rating = rating 
      my_review 
    else 
      Review.new(self, movie, rating)
    end 
  end 
  
end
