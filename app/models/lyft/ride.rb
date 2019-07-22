class Ride
    attr_reader :distance, :driver, :passenger
    @@all = []

    def initialize(distance, driver, passenger)
        @distance = distance
        @driver = driver
        @passenger = passenger
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.collect do |ride|
            ride.distance
        end.reduce(:+) / (self.all.length * 1.0)
        #sum using reduce
    end

end