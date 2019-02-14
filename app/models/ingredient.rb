# frozen_string_literal: true

# Ingredient
class Ingredient < ApplicationRecord
  has_many :doses
end
