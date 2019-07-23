class User
    attr_reader :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    #create a method for a user to pledge to a project
    def make_pledge(amount, project)
        new_pledge = Pledge.new(amount, self, project)
    end

    #method for users to create a project
    def make_project(goal)
        new_project = Project.new(goal, self)
    end
    
    #get a list of pledges for this user
    def my_pledges
        Pledge.all.select do |pledge|
            pledge.user == self
        end
    end

    def self.highest_pledge
        #get the user who has made the biggest pledge
        big_pledge = Pledge.all.max_by do |pledge|
            pledge.amount
        end
        big_pledge.user
    end

    def self.multi_pledger
        #return users that have pledged to more than one project
        self.all.select do |user|
            user.my_pledges.length > 1
        end
    end

    def self.project_creator
        #return users who have created a project
        #first grab all the people have created a project
        #from the project class and save in a variable for reference
        project_owners = Project.all.collect do |project|
            project.user
        end
        #now iterate through all users and check to see if they are
        #included in the array I just saved
        self.all.select do |user|
            project_owners.include?(user)
        end
    end

end