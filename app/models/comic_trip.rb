class ComicTrip < ApplicationRecord
  belongs_to :user
  has_many :albums, through: :album_comic_trips
  has_many :vignettes
  has_many :bookmarks

end
