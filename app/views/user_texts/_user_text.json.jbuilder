json.extract! user_text, :id, :name, :custom_text, :created_at, :updated_at
json.url user_text_url(user_text, format: :json)
