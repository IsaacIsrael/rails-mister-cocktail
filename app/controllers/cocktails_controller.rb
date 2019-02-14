# frozen_string_literal: true

# Cocktails Controller
class CocktailsController < ApplicationController
  before_action :set_coktail, only: %i[showroute]

  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  private

  def set_coktail
    @cocktail = Cocktail.find(params[:id])
  end
end
