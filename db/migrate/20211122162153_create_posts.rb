class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :excerpt
      t.text :body
      t.string :slug
      t.integer :statut
      t.boolean :meta_robots_index, default: true
      t.boolean :meta_robots_follow, default: true
      t.string :meta_title
      t.string :meta_description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

