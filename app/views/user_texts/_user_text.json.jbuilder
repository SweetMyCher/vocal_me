json.extract! user_text, :id, :name, :text, :created_at, :updated_at
json.url user_text_url(user_text, format: :json)
