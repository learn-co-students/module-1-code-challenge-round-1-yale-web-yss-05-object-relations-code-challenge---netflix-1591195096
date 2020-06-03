class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def reviews()
    Review.all().select{|review| review.movie == self}
  end

  def reviewers()
    reviews().map{|review| review.viewer}.uniq
  end

  def average_rating()
    rating_sum().to_f/reviews().count
  end

  def self.all
    @@all
  end

  def self.highest_rated()
    all().max_by{|movie| movie.average_rating()}
  end

  private 

  def rating_sum()
    reviews().reduce(0) {|total, review| total + review.rating}
  end

end
