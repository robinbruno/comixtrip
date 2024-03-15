class ComicTrip < ApplicationRecord
  belongs_to :user
  has_many :albums, through: :album_comic_trips
  has_many :vignettes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy

end
