json.extract! user, :id, :name, :email, :password, :passwordconfirmation, :admin, :created_at, :updated_at
json.url user_url(user, format: :json)