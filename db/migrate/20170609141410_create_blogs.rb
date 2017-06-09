class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.boolean :publish, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :blogs, :title, unique: true
    add_index :blogs, :slug, unique: true
  end
end
