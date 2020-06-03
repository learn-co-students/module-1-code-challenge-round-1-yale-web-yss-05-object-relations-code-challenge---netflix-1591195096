class Review
    attr_reader :viewer, :movie
    attr_accessor :rating  

    @@all = [] 

    def initialize(viewer, movie,rating)
        @viewer = viewer 
        @movie = movie
        @rating = rating.to_f 
        #stores rating data as float to allow precise dividing 
        self.class.all << self 
    end 

    def self.all 
        @@all 
    end 
end
