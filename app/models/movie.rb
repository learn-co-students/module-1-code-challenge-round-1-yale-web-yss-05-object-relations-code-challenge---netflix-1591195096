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
    Review.all.select do |review|
      review.movie == self
    end
  end

  def reviewers
    reviews.map do |review|
      review.viewer
    end.uniq
  end

  def ratings
    reviews.map do |review|
      review.rating
    end
  end

  def average_rating
    (ratings.sum).to_f / (ratings.size).to_f
  end

  def self.all_rated
    all.select do |movie|
      movie.reviews.size > 0
    end
  end

  def self.highest_rated
    self.all_rated.max { |movie1, movie2| movie1.average_rating <=> movie2.average_rating}
  end
end
