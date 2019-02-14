# frozen_string_literal: true

# Doses Controller
class DosesController < ApplicationController
  before_action :set_dose, only: %i[destroy]
  before_action :set_cocktail, only: %i[new create]

  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    @dose = @cocktail.doses.build(doses_params)

    if @dose.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def destroy
    @dose.destroy

    redirect_to @dose.cocktail
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
