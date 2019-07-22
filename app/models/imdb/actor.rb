class Actor
    attr_reader :name, :chars
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @chars = []
    end

    def self.all
        @@all
    end

    #helper method to get the number of characters an actor has played
    def chars
        Character.all.select do |character|
            character.actor == self
        end.uniq
    end

    def self.most_characters
        #return actor that has played the most different characters
        self.all.max_by do |actor|
            actor.chars.length
        end
    end

end
