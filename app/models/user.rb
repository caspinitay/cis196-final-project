require 'bcrypt'

class User < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  has_many :trips_users
  has_many :trips, through: :trips_users
  include BCrypt


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end
end
