class GalleryPicture < ApplicationRecord
  mount_uploader :picture, GalleryPictureUploader
  belongs_to :gallery
end
