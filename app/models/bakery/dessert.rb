class Dessert
    attr_reader :name
    attr_accessor :bakery, :ingredient
    @@all = []
    def initialize(name, ingredient, bakery)
        @name = name
        @ingredient = ingredient
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    #helper method to get list of ingredients for dessert
    def ingredients
        Ingredient.all.select do |ingredient|
            ingredient.dessert == self
        end
    end

    def calories
        self.ingredients.collect do |ingredient|
            ingredient.calories
        end.sum
    end
end