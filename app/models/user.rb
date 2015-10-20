class User < ActiveRecord::Base
  # relationships
  has_many :transporation_users
  has_many :transporations, through: :transporation_users
  has_many :accomodation_users
  has_many :accomodations, through: :accomodation_users
  has_many :event_users
  has_many :events, through: :event_users
  has_many :group_users
  has_many :groups, through: :group_users

  scope :alphabetical, -> {order("last_name","first_name")}

  validates_presence_of :first_name, :last_name, :email

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
