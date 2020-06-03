class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select{|review| review.movie == self}
  end

  def reviewers
    self.reviews.map{|review| review.viewer}.uniq
    # in theory, this shouldn't need .uniq as rating a movie twice would modify the original review as opposed to creating a new one.
    # however, i kept it here in case the program was somehow initialized with duplicate reviews existing already
  end

  def average_rating
    ratings = self.reviews.map{|review| review.rating}
    
    # Edge case for a movie with no ratings
    return 0 if ratings.empty? # at first I felt that this should return nil, but nil cannot be compared with a number
    
    # rounds average rating to one decimal place
    (ratings.sum.to_f / ratings.count).round(1)
    # for a 1-5 stars rating system, I felt that this was the most appropriate rounding scheme.
    # If ratings were input as percentages, however, I would round them to the nearest percent
  end

  def self.highest_rated
    self.all.max_by{|movie| movie.average_rating}
  end

end
