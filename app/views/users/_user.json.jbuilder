json.extract! user, :id, :username, :email, :name, :created_at, :updated_at
json.url user_url(user, format: :json)