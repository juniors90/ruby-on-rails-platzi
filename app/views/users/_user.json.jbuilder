json.extract! user, :id, :first_name, :last_name, :description, :addres, :about_me, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
