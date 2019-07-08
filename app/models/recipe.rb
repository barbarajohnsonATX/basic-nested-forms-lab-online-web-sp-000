class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(ingredients_attributes)
    self.ingredients = Recipe.find_or_create_by(name: ingredient[:name])
    self.ingredients.update(ingredient)
  end
end
