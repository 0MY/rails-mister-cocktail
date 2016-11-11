class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  validates :ingredient, presence: true
  # Warning: error msg won't display with if cocktail & ingredient switched (why?)
  # validates :cocktail, uniqueness: { scope: :ingredient, message: "This ingredient has already been chosen" }
  validates :ingredient, uniqueness: { scope: :cocktail, message: "This ingredient has already been chosen" }
end
