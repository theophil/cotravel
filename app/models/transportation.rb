class Transportation < ActiveRecord::Base
  belongs_to :group
  has_many :transporation_users
  has_many :users, through: :transporation_users
end
