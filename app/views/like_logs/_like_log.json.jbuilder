json.extract! like_log, :id, :user_id, :photo_id, :category_id, :created_at, :updated_at
json.url like_log_url(like_log, format: :json)
