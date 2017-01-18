json.extract! item, :id, :title, :description, :link, :guid, :pub_date, :description, :created_at, :updated_at
json.url item_url(item, format: :json)