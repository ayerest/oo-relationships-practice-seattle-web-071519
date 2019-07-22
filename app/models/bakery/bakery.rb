class Bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def ingredients
        self.desserts.collect do |dessert|
            dessert.ingredient
        end
    end

    def desserts
        Dessert.all.select do |dessert|
            dessert.bakery == self
        end
    end

    def self.all
        @@all 
    end

    def average_calories
        calories_total = self.desserts.collect do |dessert|
            dessert.calories
        end.sum
        calories_total / (self.desserts.length * 1.0)
    end

    def shopping_list
        self.ingredients.collect do |ingredient|
            ingredient.name
        end.join(", ")
    end
end