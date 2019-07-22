class Guest
    attr_reader :name
    attr_accessor :listings, :trips
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def listings
        self.trips.collect do |trip|
            trip.listing
        end
    end

    def self.all
        @@all
    end

    def trip_count
        trips.length
    end

    def self.pro_traveller
        self.all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        self.all.select do |guest|
            guest.name == name
        end
    end
end