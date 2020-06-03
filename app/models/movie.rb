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
    #selects only reviews tied to this movie 
    Review.all.select{|one_review| one_review.movie == self}
  end 

  def reviewers 
    #turns list of reviews into list of associated reviewers
    reviews.map(&:viewer).uniq 
  end 

  def average_rating 
    #divides rating sum over number of reviews, making sure denominator is not 0
    sum_ratings = reviews.sum{|one_review| one_review.rating}
    if reviews.length != 0 
      return sum_ratings / reviews.length
    else return 0 
    end 
  end 

  def self.highest_rated 
    #returns any one movie instance with the highest possible average rating
      self.all.max {|a, b| a.average_rating <=> b.average_rating}
  end 
end
