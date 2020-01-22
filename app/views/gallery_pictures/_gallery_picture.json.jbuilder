json.extract! gallery_picture, :id, :name, :description, :picture, :gallery_id, :created_at, :updated_at
json.url gallery_picture_url(gallery_picture, format: :json)
