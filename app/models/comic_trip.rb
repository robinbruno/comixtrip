class ComicTrip < ApplicationRecord
  belongs_to :user
  has_many :albums, through: :album_comic_trips
  has_many :album_comic_trips
  has_many :vignettes, dependent: :delete_all
  has_many :bookmarks, dependent: :delete_all

end
