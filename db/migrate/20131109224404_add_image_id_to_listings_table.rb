class AddImageIdToListingsTable < ActiveRecord::Migration
  def change
    add_column :listings, :image_id, :integer
  end
end
