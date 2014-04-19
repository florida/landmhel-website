class AddOpenHouseToListingsTable < ActiveRecord::Migration
  def change
    add_column :listings, :open_house, :boolean
  end
end
