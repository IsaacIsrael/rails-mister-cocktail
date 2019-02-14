# frozen_string_literal: true

# Doses Controller
class DosesController < ApplicationController
  before_action :set_cocktail, only: %i[new create]
  before_action :set_ingredient, only: %i[create]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = @cocktail.doses.build(doses_params)
    @dose.ingredient = @ingredient

    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_ingredient
    @ingredient = Ingredient.find(params[:dose][:ingredient])
  end

  def doses_params
    params.require(:dose).permit(:description)
  end
end
