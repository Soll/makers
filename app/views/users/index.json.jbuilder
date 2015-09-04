json.array!(@users) do |user|
  json.extract! user, :id, :email, :crypted_password, :salt, :maker
  json.url user_url(user, format: :json)
end
