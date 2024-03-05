class CreateVignettes < ActiveRecord::Migration[7.1]
  def change
    create_table :vignettes do |t|
      t.text :text
      t.references :comic_trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
