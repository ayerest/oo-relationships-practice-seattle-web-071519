class Ingredient
    attr_reader :name
    attr_accessor :calories
    @@all = []

    def initialize(name, calories)
        @name = name
        @calories = calories
        @@all << self
    end

    def dessert
        Dessert.all.find do |dessert|
            dessert.ingredient == self
        end
    end

    def bakery
        Bakery.all.find do |bakery|
            bakery.ingredients.include?(self)
        end
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient_name)
        self.all.select do |ingredient|
            ingredient.name.include?(ingredient_name)
        end
    end
end