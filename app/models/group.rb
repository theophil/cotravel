class Group < ActiveRecord::Base
 has_many :group_users
 has_many :users, through: :group_users
 has_many :accomodations
 has_many :transportations
 has_many :schedules
end
