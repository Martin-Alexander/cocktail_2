class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness: {scope: :ingredient, message: "cocktail not uniqe" }
  validates :ingredient, uniqueness: {scope: :ingredient, message: "ingred. not unique" }
end
