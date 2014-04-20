class AddOpenHouseToListingsTable < ActiveRecord::Migration
  def change
    add_column :listings, :open_house, :boolean
    add_column :listings, :open_house_date_time, :datetime

  end
end
