json.extract! post, :id, :name, :picture, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
