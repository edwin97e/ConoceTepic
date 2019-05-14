json.extract! route, :id, :name, :short_description, :long_description, :sites, :cost, :link_video, :created_at, :updated_at
json.url route_url(route, format: :json)
