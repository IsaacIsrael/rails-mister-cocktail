# frozen_string_literal: true

# Cocktails Controller
class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show]
  before_action :set_ingredients, only: %i[show]

  def index
    @cocktails = Cocktail.filter(params.slice(:name_filter))
  end

  def show
    @dose = Dose.new
    @review = Review.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def set_ingredients
    @ingredients = Ingredient.all
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
