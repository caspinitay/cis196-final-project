class Trip < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true
  has_many :trips_users
  has_many :users, through: :trips_users

end
