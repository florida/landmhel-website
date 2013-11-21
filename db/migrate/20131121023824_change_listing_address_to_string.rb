class ChangeListingAddressToString < ActiveRecord::Migration
  def change
    change_column :listings, :address, :string
  end
end
