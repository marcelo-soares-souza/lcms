class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true, length: { minimum: 4 }

  belongs_to :user

  protected
    def should_generate_new_friendly_id?
      title_changed?
    end
end
