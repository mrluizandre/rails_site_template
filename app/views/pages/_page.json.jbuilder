json.extract! page, :id, :name, :picture, :body, :slug, :created_at, :updated_at
json.url page_url(page, format: :json)
