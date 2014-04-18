class Inquiry < ActiveRecord::Base
  belongs_to :agent
  belongs_to :listing
  phony_normalize :phone, default_country_code: 'CA'

  validates :name, presence: true
  validates :phone, phony_plausible: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Not a valid email address" }

  scope :recent, ->(limit = 10) { order("created_at desc").limit(limit) }
end
