json.extract! user, :id, :login, :email, :join_date, :bio, :like_limit, :created_at, :updated_at
json.url user_url(user, format: :json)