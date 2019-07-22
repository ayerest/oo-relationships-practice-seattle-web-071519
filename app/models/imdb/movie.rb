class Movie
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    #use this method to get the characters for a given movie
    def characters
        Character.all.select do |character|
            character.project == self
        end
    end

    #use this method to get the actors in a given movie, can get them from the characters list
    def actors
        self.characters.collect do |character|
            character.actor
        end
    end


    def self.most_actors 
        #get the movie with the most actors
        self.all.max_by do |movie|
            movie.actors.length
        end
    end
end