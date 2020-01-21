class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :picture
      t.text :body
      t.string :slug

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
