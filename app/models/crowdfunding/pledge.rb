class Pledge
    @@all = []
    attr_accessor :amount, :user, :project

    def self.all
        @@all
    end

    def initialize(amount, user, project)
        @amount = amount
        @user = user
        @project = project
        @@all << self
    end

end