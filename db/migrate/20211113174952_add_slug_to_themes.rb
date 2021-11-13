class AddSlugToThemes < ActiveRecord::Migration[7.0]
  def change
    remove_column :themes, :slug
    add_column :themes, :slug, :string
    add_index :themes, :slug, unique: true
  end
end
