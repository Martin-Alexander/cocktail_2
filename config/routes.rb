Rails.application.routes.draw do
# A user can see the list of all cocktails
get "cocktails", to: "cocktails#index", as: "cocktails"
# A user can see the details of a given cocktail, with the ingredient list
get "cocktails/new", to: "cocktails#new", as: "new_cocktail"
get "cocktails/:id", to: "cocktails#show", as: "cocktail"
# A user can create a new cocktail.
post "cocktails", to: "cocktails#create"
# A user can add a new dose (ingredient/description pair) on an existing cocktail.
get "cocktails/:cocktail_id/doses/new", to: "doses#new", as: "new_dose"
post "cocktails/:cocktail_id/doses", to: "doses#create", as: "create_dose"
# A user can delete a dose on an existing cocktail
delete "doses/:id", to: "doses#destroy", as: "destroy_dose"
end
