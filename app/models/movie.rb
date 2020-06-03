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
    Review.all.select{|rev| rev.movie == self}
  end 

  def reviewers
    self.reviews.map{|rev| rev.viewer}
  end 
  
  def average_rating
   all_reviews = reviews.sum{|rev| rev.rating}
   all_reviews / reviews.count
  end 

  def self.highest_rated 
    averages = Movie.all.map{|movie| movie.average_rating}
    averages.sort
    Movie.all.select{|movie| movie.average_rating == averages[-1]}
  end 


end
