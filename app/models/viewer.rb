class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def reviews
    Review.all.select{|review| review.viewer==self}
  end

  def reviewed_movies
    reviews.map{|review| review.movie}.uniq
  end

  def reviewed_movie?(movie)
    reviewed_movies.include?(movie)
  end

  def rate_movie(movie, rating) # Will return the review, whether it created it or already exists
    if reviewed_movie?(movie)
      reviews.find{|review| review.movie==movie}.rating=rating
    else
      Review.new(self, movie, rating)
    end    
  end

  # def rate_movie(movie, rating) # Will return the review, whether it created it or already exists
  #   existing_review=reviews.find{|review| review.movie==movie}
  #   if existing_review
  #     existing_review.rating=rating
  #     return existing_review
  #   else
  #     Review.new(self, movie, rating)
  #   end    
  # end

  def self.all
    @@all
  end
  
end
