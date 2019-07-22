class Driver
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def passengers
        #get all passengers for a driver
        self.rides.collect do |ride|
            ride.passenger
        end
    end

    def rides
        #get all rides for a driver
        Ride.all.select do |ride|
            ride.driver == self
        end
    end

    #helper method to get total mileage for a driver
    def my_mileage
        self.rides.collect do |ride|
            ride.distance
        end.sum
    end

    def self.all
        @@all
    end

    def self.mileage_cap(distance)
        #returns all drivers that have exceded the given distance in mileage
        self.all.select do |driver|
            driver.my_mileage > distance
        end
    end
end