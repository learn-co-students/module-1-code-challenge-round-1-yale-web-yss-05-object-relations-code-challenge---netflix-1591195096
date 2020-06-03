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
    Review.all.select{|r| r.viewer == self}
  end

  def reviewed_movies
    reviews.map{|r| r.movie}
  end
  
  def reviewed_movie?(movie)
    reviews.any? {|r|r.movie == movie}
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      reviews.find {|r|r.movie == movie}.rating = rating
    else 
      Review.new(self, movie, rating)
    end
  end

end
