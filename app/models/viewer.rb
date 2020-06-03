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
    Review.all.select { |rvw| rvw.viewer == self }
  end

  def reviewed_movies
    self.reviews.map { |rvw| rvw.movie }.uniq #I put a uniq here in case a viewer watched a movie twice
  end

  def reviewed_movie?(movie)
    self.reviewed_movies.any? { |mv| mv == movie }
  end

  def rate_movie(movie, rating)
    self.reviewed_movie?(movie) ? self.update_rtg(movie,rating) : Review.new(self,movie,rating)
  end

  def update_rtg(movie, rating)
    review = self.reviews.find { |rvw| rvw.movie == movie }
    review.rating = rating
  end

end
