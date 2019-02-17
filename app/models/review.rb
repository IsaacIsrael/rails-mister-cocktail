# frozen_string_literal: true

# Review
class Review < ApplicationRecord
  belongs_to :cocktail

  validates :content, presence: true
  validates :rating, inclusion: { in: [*(0..5)] },
                     numericality: { only_integer: true }

  def self.rating_range
    [*(0..5)].map { |nunmber| [nunmber] }
  end

  def date
    created_at.strftime('%d/%m/%Y - %H:%M')
  end
end
