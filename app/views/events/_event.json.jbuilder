json.extract! event, :id, :name, :short_description, :long_description, :latitude, :longitude, :cost, :state, :begining_hour, :ending_hour, :begining_date, :ending_date, :link_video, :created_at, :updated_at
json.url event_url(event, format: :json)
