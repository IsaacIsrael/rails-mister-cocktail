# frozen_string_literal: true

# Cocktail
class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses
end
