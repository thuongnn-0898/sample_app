json.extract! user, :id, :name, :email, :phone_number, :age,:created_at, :updated_at
json.url user_url(user, format: :json)
