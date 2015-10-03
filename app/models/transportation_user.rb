class TransportationUser < ActiveRecord::Base
  belongs_to :transportation
  belongs_to :user
end
