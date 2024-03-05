class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :comic_trip
end
