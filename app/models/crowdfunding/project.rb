class Project
    attr_reader :pledge_goal
    attr_accessor :user
    @@all = []

    def self.all
        @@all
    end

    def initialize(pledge_goal, user)
        @pledge_goal = pledge_goal
        @user = user
        @@all << self
    end

    #get pledge instances for this project
    def pledges
        Pledge.all.select do |pledge|
            pledge.project == self
        end
    end

    #get total funds raised
    def total_funds
        self.pledges.collect do |pledge|
            pledge.amount
        end.sum
    end

    def self.no_pledges
        #gets projects without any pledges
        self.all.select do |project|
            project.pledges.empty?
        end
    end

    def self.above_goal
        #return projects that have met+ their goal
        self.all.select do |project|
            project.total_funds >= project.pledge_goal
        end
    end

    #helper method to get backers
    def my_backers
        self.pledges.collect do |pledge|
            pledge.user
        end.uniq
    end

    def self.most_backers
        #return the project with the most backers
        #try with max_by method
        self.all.max_by do |project|
            project.my_backers.length
        end
    end

end