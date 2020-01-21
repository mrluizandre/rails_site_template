class Page < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :picture, PagePictureUploader
end
