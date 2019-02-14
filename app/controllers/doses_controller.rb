# frozen_string_literal: true

# Doses Controller
class DosesController < ApplicationController
  before_action :set_cocktail, only: %i[new]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:cocktail).permit(:name, :ingredient)
  end
end
