json.extract! register, :id, :LastName, :FirstName, :Email, :Password, :gender, :created_at, :updated_at
json.url register_url(register, format: :json)
