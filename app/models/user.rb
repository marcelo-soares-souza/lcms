class User < ApplicationRecord
  has_many :images

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :fullname, :presence => true
end
