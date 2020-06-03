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
    Review.all.select {|review| review.viewer==self}
  end

  def reviewed_movies
    reviews.map(&:movie)
  end

  def reviewed_movie?(movie)
    #asking the array of movies, if there's a title matching input
    reviewed_movies.any? {|review| review==movie}
  end
  
  def rate_movie(movie,rating)
    # if there isn't a movie already associated (aka no rating) w this viewer then create review
    # COME BACK TO
    # if reviewed_movie?(movie) == false
    #   Reveiw.new(self,movie,rating)
    # else 
    #   # need to rewrite rating (#rating=)
    #   reviews.map(&:rating==rating)
    # end
    
    # first line: "does a review exists where the movie = argument & I'm the viewer"
    if Review.all.any? {|review| review.movie == movie && review.viewer == self}
    # need to pick out specific review instance and alter
        review_instance = Review.all.select {|review| review.movie==movie && review.viewer == self}
        # should return an array (review_instance) w the review instance at index 0
          review_instance[0].rating= rating
          # needs to write over current instance
    else
      # this makes the movie value whatever you input, but it doesn't pass an instance of a movie?
      return Review.new(self, movie, rating)
    end
  end

  # checking to see if first line of previous method works... and it does
  # def tester (movie)
  #   Review.all.any? {|review| review.movie == movie && review.viewer == self}
  # end

end
