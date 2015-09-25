json.array!(@transportation_users) do |transportation_user|
  json.extract! transportation_user, :id, :user_id, :transporation_id, :like, :dislike
  json.url transportation_user_url(transportation_user, format: :json)
end
