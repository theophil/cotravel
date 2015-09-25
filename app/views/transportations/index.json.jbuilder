json.array!(@transportations) do |transportation|
  json.extract! transportation, :id, :group_id, :is_final_plan, :like, :dislike, :departure_location, :arrival_location, :description
  json.url transportation_url(transportation, format: :json)
end
