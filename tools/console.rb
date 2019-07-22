require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#airbnb

guest_one = Guest.new("Katie")
guest_two = Guest.new("Jason")
guest_three = Guest.new("Ash")

listing_one = Listing.new("Seattle")
listing_two = Listing.new("LA")

trip_one = Trip.new(listing_one, guest_one)
trip_two = Trip.new(listing_one, guest_two)
trip_three = Trip.new(listing_two, guest_one)
trip_four = Trip.new(listing_one, guest_one)
trip_five = Trip.new(listing_two, guest_two)
trip_six = Trip.new(listing_one, guest_three)


#bakery

bakery_one = Bakery.new("ABC")
bakery_two = Bakery.new("XYZ")


ingredient_one = Ingredient.new("Chocolate", 300)
ingredient_two = Ingredient.new("Chocolate chips", 250)
ingredient_three = Ingredient.new("Carrots", 100)
ingredient_four = Ingredient.new("Butter", 666)

dessert_one = Dessert.new("Red Velvet Cake", ingredient_one, bakery_one)
dessert_two = Dessert.new("Carrot Cake", ingredient_three, bakery_two)
dessert_three = Dessert.new("Cookies", ingredient_four, bakery_two)


#lyft

passenger_one = Passenger.new("A")
passenger_two = Passenger.new("B")
passenger_three = Passenger.new("C")

driver_one = Driver.new("D")
driver_2 = Driver.new("E")
driver_3 = Driver.new("F")
driver_4 = Driver.new("G")
driver_5 = Driver.new("H")

ride_1 = Ride.new(200, driver_one, passenger_three)
ride_1 = Ride.new(110, driver_2, passenger_three)
ride_1 = Ride.new(5, driver_3, passenger_two)
ride_1 = Ride.new(10, driver_5, passenger_two)
ride_1 = Ride.new(90, driver_4, passenger_two)
ride_1 = Ride.new(99, driver_5, passenger_one)








#imdbb

movie_one = Movie.new("Test")
movie_two = Movie.new("abcd")
movie_three = Movie.new("d")


show_one = Show.new("Test")
show_two = Movie.new("T")





actor_one = Actor.new("Gregory")
actor_two = Actor.new("Candace")
actor_three = Actor.new("John")

character_two = Character.new("adsjfjh", actor_two, movie_one)
character_one = Character.new("Blah blah", actor_one, movie_one)
character_three = Character.new("r", actor_three, movie_two)
character_four = Character.new("s", actor_three, movie_one)
character_five = Character.new("Blah blah", actor_three, movie_three)







Pry.start
