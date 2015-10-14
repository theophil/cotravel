class User < ActiveRecord::Base
  # relationships
  has_many :transporation_users
  has_many :transporations, through: :transporation_users
  has_many :accomodation_users
  has_many :accomodations, through: :accomodation_users
  has_many :event_users
  has_many :events, through: :event_users

  scope :alphabetical, -> {order("last_name","first_name")}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
