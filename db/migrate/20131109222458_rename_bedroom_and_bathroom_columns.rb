class RenameBedroomAndBathroomColumns < ActiveRecord::Migration
  def change
    rename_column :listings, :no_of_bedrooms, :bedrooms
    rename_column :listings, :no_of_bathrooms, :bathrooms
  end
end
