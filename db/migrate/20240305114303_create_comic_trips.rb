class CreateComicTrips < ActiveRecord::Migration[7.1]
  def change
    create_table :comic_trips do |t|
      t.string :title
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
