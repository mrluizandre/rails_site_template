class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :picture
      t.text :body

      t.timestamps
    end
  end
end
