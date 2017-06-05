json.extract! post, :id, :date, :rationale, :user, :created_at, :updated_at
json.url post_url(post, format: :json)
