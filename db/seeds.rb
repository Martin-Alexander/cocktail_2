for i in 1..10
  Cocktail.create(name: "Cocktail #{i}")
end

for i in 1..3
  Ingredient.create(name: "Ingredient #{i}")
end
