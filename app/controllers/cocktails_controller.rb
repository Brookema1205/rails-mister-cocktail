class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
    # @ingredients = Ingredient.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def update
    aadfadsf
    @cocktail = Cocktail.find(params[:id])
    @cocktail.save
    redirect_to new_cocktail_path(@cocktail)

  end


  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
