class CreateBanners < ActiveRecord::Migration[5.2]
  def change
    create_table :banners do |t|
      t.string :name
      t.integer :location
      t.string :picture
      t.string :link
      t.text :description

      t.timestamps
    end
  end
end
