class DosesController < ApplicationController

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new()
  end

  def create
    @dose = Dose.new()
    @dose.cocktail = Cocktail.find(params[:cocktail_id].to_i)
    unless params[:dose][:ingredient_id].nil?
      @dose.ingredient = Ingredient.find(params[:dose][:ingredient_id].to_i)
    end
    @dose.description = params[:description]
    if @dose.valid?
      @dose.save
      redirect_to cocktail_path(@dose.cocktail)
    else
      render "new"
    end
  end

  def destroy
    Dose.find(params[:id]).destroy
  end
end
