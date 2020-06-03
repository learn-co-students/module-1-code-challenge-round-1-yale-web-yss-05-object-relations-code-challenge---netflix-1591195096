class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.viewer == self}
  end

  def reviewed_movies
    reviews.collect{|review| review.movie}
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def find_review_by_movie(movie)
    reviews.find{|review| review.movie == movie}
  end

  def rate_movie(movie, rating)
    if reviewed_movie?(movie)
      find_review_by_movie(movie).rating = rating
    else
      Review.new(movie: movie, rating: rating, viewer: self)
    end
  end


  
end
