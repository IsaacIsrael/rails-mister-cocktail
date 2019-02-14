# frozen_string_literal: true

# Cocktails Controller
class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end
end
