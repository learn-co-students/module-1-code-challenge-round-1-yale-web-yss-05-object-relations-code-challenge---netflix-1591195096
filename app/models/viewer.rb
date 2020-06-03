class Viewer
  attr_accessor :username, :rating

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.viewer == self}.uniq
  end
  
  def reviewed_movies
    reviews.map {|revdmovies| revdmovies.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    Review.new(self, movie, rating)
  end

end

