json.extract! fileshare, :id, :category, :title, :keyword, :description, :file, :image, :created_at, :updated_at
json.url fileshare_url(fileshare, format: :json)
