json.extract! feed, :id, :title, :user_id, :feed_updated_at, :url, :feed_id, :description, :last_build_date, :language, :item_id, :created_at, :updated_at
json.url feed_url(feed, format: :json)