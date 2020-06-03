class Movie
  attr_accessor :title, :rating

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews 
    Review.all.select {|r| r.movie == self }
  end 

  def reviewers 
    reviews.map {|r| r.viewer }
  end 

  def average_rating 
    num = reviews.map {|r| r.rating.to_f }.sum 
    return num / reviews.count.to_f
    # return num / self.rating.count
  end 

  def self.highest_rated 
    self.all.max_by {|m| m.rating}
  end 

end
