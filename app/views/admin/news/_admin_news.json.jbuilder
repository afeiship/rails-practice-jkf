json.extract! admin_news, :id, :title, :content, :created_at, :updated_at
json.url admin_news_url(admin_news, format: :json)
