json.extract! post, :id, :title, :body, :published, :created_at, :updated_at
json.created_at l(post.created_at, format: :long)
json.updated_at l(post.updated_at, format: :long)
json.url post_url(post, format: :json)
