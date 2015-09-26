json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :group_id, :date
  json.url schedule_url(schedule, format: :json)
end
