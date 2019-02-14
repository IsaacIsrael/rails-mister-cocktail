# frozen_string_literal: true

# Cocktails Controller
class CocktailsController < ApplicationController
  before_action :set_coktail, only: %i[show]

  def index
    @cocktails = Cocktail.all
  end

  def show; end

  private

  def set_coktail
    @cocktail = Cocktail.find(params[:id])
  end
end
