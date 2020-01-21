class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  mount_uploader :picture, PostPictureUploader
end
