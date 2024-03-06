class Vignette < ApplicationRecord
  belongs_to :comic_trip
  has_many :compositions
  has_many :elements, through: :compositions
end
