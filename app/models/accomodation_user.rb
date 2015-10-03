class AccomodationUser < ActiveRecord::Base
  #relationships
  belongs_to :user
  belongs_to :accomodation
end
