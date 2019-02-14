# frozen_string_literal: true

# Dose
class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
end
