class Inquiry < ActiveRecord::Base
  belongs_to :agent
  belongs_to :listing
  scope :recent, ->(limit = 10) { order("created_at desc").limit(limit) }
end
