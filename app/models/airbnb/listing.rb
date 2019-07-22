class Listing
    attr_reader :city
    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def guests
        self.trips.collect do |trip|
            trip.guest
        end
    end

    def trip_count
        self.trips.length
    end

    def self.all
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        most_trips = 0
        most = {}
        self.all.each do |listing|
            if listing.trip_count > most_trips
                most_trips = listing.trip_count
                most = listing
            end
        end
        most
    end

    
end