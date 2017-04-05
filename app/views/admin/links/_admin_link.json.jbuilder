json.extract! admin_link, :id, :title, :image, :link, :created_at, :updated_at
json.url admin_link_url(admin_link, format: :json)
