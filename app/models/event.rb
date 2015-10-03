class Event < ActiveRecord::Base
  #relationships
  belongs_to :schedule
  has_many :event_users
  has_many :users, through: :event_users
end
