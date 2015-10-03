class Schedule < ActiveRecord::Base
  #relationships
  belongs_to :group
  has_many :events
end
