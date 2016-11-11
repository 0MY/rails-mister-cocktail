class Ingredient < ApplicationRecord
  has_many :doses, dependent: :restrict_with_exception

  validates :name, presence: true, uniqueness: true

  # permet de trier par odre alphabétique à chaque fois qu'on les appelle tous
  default_scope -> { order(name: :ASC) }

end
