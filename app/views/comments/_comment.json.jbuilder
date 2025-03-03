json.extract! comment, :id, :name, :body, :post, :references, :created_at, :updated_at
json.url comment_url(comment, format: :json)
