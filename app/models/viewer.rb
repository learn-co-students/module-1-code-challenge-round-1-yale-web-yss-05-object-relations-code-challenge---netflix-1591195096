class Viewer
  # deliverables
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.map{|review| review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      find_review_by_movie(movie).rating = rating
    else new_review(movie, rating)
    end
  end

  def self.all
    @@all
  end

  # additional helper methods
  def find_review_by_movie(movie)
    reviews.find{|review| review.movie == movie}
  end

  def new_review(movie, rating)
    Review.new(self, movie, rating)
  end
  
end
