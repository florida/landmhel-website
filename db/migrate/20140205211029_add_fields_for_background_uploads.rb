class AddFieldsForBackgroundUploads < ActiveRecord::Migration
  def change
    add_column :agents, :avatar_processing, :boolean
    add_column :images, :image_file_processing, :boolean
  end
end
