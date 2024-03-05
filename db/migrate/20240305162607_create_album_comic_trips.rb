class CreateAlbumComicTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :album_comic_trips do |t|
      t.references :album, null: false, foreign_key: true
      t.references :comic_trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
