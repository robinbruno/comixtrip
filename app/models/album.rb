class Album < ApplicationRecord
  belongs_to :user
  has_many :album_comic_trips
end
