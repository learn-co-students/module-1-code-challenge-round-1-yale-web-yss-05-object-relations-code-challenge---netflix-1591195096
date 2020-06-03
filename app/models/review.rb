class Review

    attr_accessor :viewer, :movie, :rating

    @@all = []

    def self.all
        @@all
    end

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self
    end


end
