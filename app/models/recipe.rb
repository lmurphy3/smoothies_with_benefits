class Recipe < ApplicationRecord
  # Direct associations

  has_many   :favorite_recipes,
             :dependent => :destroy

  has_many   :recipe_ingredients,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
