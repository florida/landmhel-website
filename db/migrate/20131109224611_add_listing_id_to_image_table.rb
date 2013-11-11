class AddListingIdToImageTable < ActiveRecord::Migration
  def change
    remove_column :listings, :image_id
    add_column :images, :listing_id, :integer
  end
end
