class Show
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def on_the_big_screen
        #does this show have the same title as a movie?
        #going to treat this as an instance method
        Movie.all.select do |movie|
            movie.name == self.name
        end
    end
end