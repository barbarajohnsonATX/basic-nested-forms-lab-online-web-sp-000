class Recipe < ActiveRecord::Base
  has_many :ingredients 

  #recipe accepts two indgredients
  def ingredients_attributes=(ingredients_attributes)
    ingredients_attributes.each do |i, ingredient_attributes|
      self.ingredients.build(ingredient_attributes)
    end
  end
end
