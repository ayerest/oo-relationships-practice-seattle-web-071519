class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    #helper method to grab a passengers rides from the ride class
    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    def drivers
        #returns all drivers a passenger has taken rides with
        self.rides.collect do |ride|
            ride.driver
        end
    end

    def self.all
        @@all
    end

    def total_distance
        #calculate the total distance the passenger has travelled
        self.rides.collect do |ride|
            ride.distance
        end.sum
    end

    def self.premium_members
        #find all passengers that have travelled over 100 miles
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end
end