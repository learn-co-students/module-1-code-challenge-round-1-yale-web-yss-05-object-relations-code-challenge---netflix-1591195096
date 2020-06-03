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
    self.reviews.map{|review| review.movie}.uniq
    # in theory, this shouldn't need .uniq as rating a movie twice would modify the original review as opposed to creating a new one.
    # however, i kept it here in case the program was somehow initialized with duplicate reviews existing already
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.any?(movie)
  end

  def rate_movie(movie, rating)
    if self.reviewed_movie?(movie)
      self.reviews.find{|review| review.movie == movie}.rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
  
end
