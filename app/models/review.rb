class Review
    attr_reader :viewer, :movie
    attr_accessor :rating

    @@all = []

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating

        self.class.all << self
    end

    # Class Methods
    def self.all
        @@all
    end

end
