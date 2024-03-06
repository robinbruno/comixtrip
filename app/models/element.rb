class Element < ApplicationRecord
  has_many :compositions
  has_many :vignettes, through: :compositions
end
