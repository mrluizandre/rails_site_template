class Banner < ApplicationRecord
  mount_uploader :picture, BannerPictureUploader

  enum :location => [:location1, :location2]
end
