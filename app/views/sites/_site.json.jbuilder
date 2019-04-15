json.extract! site, :id, :name, :short_description, :long_description, :latitude, :longitude, :cost, :begining_hour, :ending_hour, :img, :video, :link_video, :created_at, :updated_at
json.url site_url(site, format: :json)
