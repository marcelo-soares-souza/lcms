json.extract! blog, :id, :title, :slug, :content, :publish, :user_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
