json.array!(@events) do |event|
  json.extract! event, :id, :id, :name, :schedule_id, :start_time, :end_time, :description, :cost, :longitude, :location_name
  json.url event_url(event, format: :json)
end
