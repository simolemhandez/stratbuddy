class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attempts
  has_many :orders
  mount_uploader :photo, PhotoUploader
  acts_as_follower
  monetize :price_cents
end
