class Vignette < ApplicationRecord
  belongs_to :comic_trip
  has_many :compositions, dependent: :destroy
  has_many :elements, through: :compositions
end
