class CreateCompositions < ActiveRecord::Migration[7.1]
  def change
    create_table :compositions do |t|
      t.integer :z_index
      t.references :vignette, null: false, foreign_key: true
      t.references :element, null: false, foreign_key: true

      t.timestamps
    end
  end
end
