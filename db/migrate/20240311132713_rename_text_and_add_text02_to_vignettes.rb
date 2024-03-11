class RenameTextAndAddText02ToVignettes < ActiveRecord::Migration[7.1]
  def change
    rename_column :vignettes, :text, :text01
    add_column :vignettes, :text02, :text
  end
end
