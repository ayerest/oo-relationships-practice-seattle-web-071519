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








Pry.start
