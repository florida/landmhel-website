# == Schema Information
#
# Table name: banners
#
#  id          :integer          not null, primary key
#  image_file  :string(255)
#  header      :string(255)
#  description :text
#  link_name   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  link_url    :string(255)
#

class Banner < ActiveRecord::Base
end
