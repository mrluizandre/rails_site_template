class CreateGalleryPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :gallery_pictures do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.belongs_to :gallery, foreign_key: true

      t.timestamps
    end
  end
end
