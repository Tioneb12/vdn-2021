class RemoveColumnMetaImageFromThemes < ActiveRecord::Migration[7.0]
  def change
    remove_column :themes, :meta_image
  end
end
