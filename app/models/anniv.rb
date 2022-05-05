class Anniv < ApplicationRecord
  validates :name, presence: true
  validates :birthdate, presence: true
end
