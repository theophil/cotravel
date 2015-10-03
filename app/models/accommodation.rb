class Accommodation < ActiveRecord::Base
  #relationships
  belongs_to :group
  has_many :accommodation_users
end
