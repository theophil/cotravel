json.array!(@accommodations) do |accommodation|
  json.extract! accommodation, :id, :name, :check_in_time, :check_out_time, :group_id, :is_final_plan, :cost, :longitude, :latitude, :url
  json.url accommodation_url(accommodation, format: :json)
end
