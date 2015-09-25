json.array!(@accomodation_users) do |accomodation_user|
  json.extract! accomodation_user, :id, :user_id, :accomodation_id, :like, :dislike
  json.url accomodation_user_url(accomodation_user, format: :json)
end
