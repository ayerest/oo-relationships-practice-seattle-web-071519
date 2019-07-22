class Character
    attr_reader :actor, :project, :name
    @@all = []

    #project could be a movie or a tv show
    def initialize(name, actor, project)
        @name = name
        @actor = actor
        @project = project
        @@all << self
    end

    def self.all
        @@all
    end

    #helper method to get number of projects for a character
    def num_appearances
        @@all.select do |character|
            character.name == self.name
        end.length
    end


    def self.most_appearances
        #which character appears in the most projects (tv/movies)
        #treating as a class method
        # character_hash = Hash.new(0)
        # self.all.each do |character|
        #    if !character_hash[character]
        #     character_hash[character] = 1
        #    else
        #     character_hash[character] += 1
        #    end
        # end
        # most_val = character_hash.values.sort[-1]
        # character_hash.key(most_val)

        #try rewriting with max_by
        @@all.max_by do |character|
            character.num_appearances
        end
    end

end