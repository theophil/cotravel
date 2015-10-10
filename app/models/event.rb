class Event < ActiveRecord::Base
  #relationships
  belongs_to :schedule
  has_many :event_users
  has_many :users, through: :event_users

  def thumbs_up_total
  	self.event_users.where(like: true).size
  end

  def thumbs_down_total
  	self.event_users.where(like: false).size
  end
end
