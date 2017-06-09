class User < ApplicationRecord
  has_many :images

  extend FriendlyId
  friendly_id :fullname, use: :slugged

  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  validates :fullname, presence: true

  protected
    def should_generate_new_friendly_id?
      fullname_changed?
    end
end
