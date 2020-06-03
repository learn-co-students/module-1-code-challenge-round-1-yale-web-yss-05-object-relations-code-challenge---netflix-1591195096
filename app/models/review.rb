class Review
    @@all = []
    attr_accessor :viewer, :movie, :rating 

    def initialize(viewer, movie, rating)
        @viewer = viewer
        @movie = movie
        @rating = rating
        self.class.all << self 
    end 
    
    def self.all 
        @@all
    end 



end
