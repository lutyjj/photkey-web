json.extract! photo, :id, :category_id, :user_id, :likes, :date, :created_at, :updated_at
json.url photo_url(photo, format: :json)
