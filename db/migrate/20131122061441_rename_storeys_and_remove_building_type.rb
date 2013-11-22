class RenameStoreysAndRemoveBuildingType < ActiveRecord::Migration
  def change
    remove_column :listings, :building_type
    add_column :listings, :style, :string
  end
end
