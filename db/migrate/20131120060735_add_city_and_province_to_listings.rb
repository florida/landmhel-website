class AddCityAndProvinceToListings < ActiveRecord::Migration
  def change
    add_column :listings, :city, :string
    add_column :listings, :province, :string
  end
end
