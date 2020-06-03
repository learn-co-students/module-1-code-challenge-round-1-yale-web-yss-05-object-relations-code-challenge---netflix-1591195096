class Movie
  attr_accessor :title, :rating


  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    Review.all.select {|review| review.movie == self}
  end

  def reviewers
    reviews.map {|reviewers| reviewers.viewer}.uniq
  end

  def total_ratings_helper
    total=reviews.map {|review| review.rating}.sum
  end

  def number_of_ratings_helper
    number=reviews.map {|review| review.rating}.size
  end

  def average_rating
    if total_ratings_helper && number_of_ratings_helper >0
      average_rating = total_ratings_helper / number_of_ratings_helper
    else 
      average_rating = 0
    end
  end

  def self.highest_rated
    @@all.max_by {|review| review.average_rating}
  end

end
