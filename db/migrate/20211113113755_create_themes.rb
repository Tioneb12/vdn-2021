class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.string :meta_title
      t.string :meta_description
      t.string :meta_image
      t.boolean :meta_robots_index
      t.boolean :meta_robots_follow
      t.string :title
      t.string :description
      t.integer :statut, default:0
      t.integer :published_posts_count
      t.string :slug
    end
  end
end
