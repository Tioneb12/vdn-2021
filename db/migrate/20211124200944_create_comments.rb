class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :pseudo
      t.string :email
      t.string :website
      t.string :comment
      t.boolean :active
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
