class AddTitleToElements < ActiveRecord::Migration[7.1]
  def change
    add_column :elements, :name, :string
  end
end
