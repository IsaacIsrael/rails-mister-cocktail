# frozen_string_literal: true

# Cocktail
class Cocktail < ApplicationRecord
  include Filterable

  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, uniqueness: true, presence: true

  scope :name_filter, ->(name) { where('lower(name) LIKE ?', "%#{name.downcase}%") }

  def reviews_sort_date
    reviews.reverse
  end
end
