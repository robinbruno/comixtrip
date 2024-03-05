class CreateElements < ActiveRecord::Migration[7.1]
  def change
    create_table :elements do |t|
      t.string :image_url
      t.string :category

      t.timestamps
    end
  end
end
