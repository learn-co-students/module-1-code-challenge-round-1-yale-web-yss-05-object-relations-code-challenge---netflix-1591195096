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
    Review.all.select { |rvw| rvw.movie == self }
  end

  def reviewers
    self.reviews.map { |rvw| rvw.viewer }.uniq #I put a uniq here in case a viewer watched a movie twice
  end

  def average_rating
    rtg_arr = self.reviews.map { |rvw| rvw.rating }
    rtg_arr.sum / rtg_arr.length
  end

  def self.highest_rated
    @@all.max {|a, b| a.average_rating <=> b.average_rating}
  end

  # OLD HIGHEST_RATED METHOD:
  # def self.highest_rated
  #   avg_rtg = 0
  #   top_movie = "No movies have been rated"
  #   @@all.each { |mv|
  #     if mv.average_rating > avg_rtg
  #       avg_rtg = mv.average_rating
  #       top_movie = mv
  #     end
  #   }
  #   top_movie
  # end
end
