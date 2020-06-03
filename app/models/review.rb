class Review
    attr_reader :viewer, :movie
    attr_accessor :rating
    # :rating is accessor bc in viewer #rate_movie method we need to be able to change it
    @@all = []

    def initialize (viewer, movie, rating)
        @viewer=viewer
        @movie=movie
        @rating=rating
        self.class.all << self
    end

    def self.all
        @@all
    end

end
