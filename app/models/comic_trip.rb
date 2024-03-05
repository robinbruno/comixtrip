class ComicTrip < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :albums
  has_many :vignettes
  has_many :bookmarks

end
