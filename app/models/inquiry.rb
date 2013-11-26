class Inquiry < ActiveRecord::Base
  belongs_to :agent
  belongs_to :listing
end
