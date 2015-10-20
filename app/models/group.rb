class Group < ActiveRecord::Base
 has_many :group_users
 has_many :users, through: :group_users
 has_many :accomodations
 has_many :transportations
 has_many :schedules

 accepts_nested_attributes_for :users, reject_if: lambda { |user| user[:first_name].blank? }

 scope :alphabetical, -> {order("name")}
 # scope :schedule, -> (self.id) { joins(:schedules).where('group_id = ?', self.id) }
 
end
