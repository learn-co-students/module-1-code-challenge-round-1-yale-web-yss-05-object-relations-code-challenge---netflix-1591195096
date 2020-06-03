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
    reviews.map {|review| review.movie}.uniq
  end

  def get_movie_review(movie)
    reviews.find {|review| review.movie == movie}
  end

  def reviewed_movie?(movie)
    !!get_movie_review(movie)
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      get_movie_review(movie).rating = rating
    else
      Review.new(self, movie, rating)
    end
  end
end
