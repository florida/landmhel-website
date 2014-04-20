# == Schema Information
#
# Table name: blobs
#
#  id          :integer          not null, primary key
#  header      :string(255)
#  description :text
#  link_name   :string(255)
#  link_url    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Blob < ActiveRecord::Base
end
