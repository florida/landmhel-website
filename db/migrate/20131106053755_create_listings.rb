class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :address
      t.string :area
      t.string :property_type
      t.string :building_type
      t.int :no_of_bedrooms
      t.int :no_of_bathrooms
      t.decimal :price
      t.boolean :featured
      t.boolean :sold
      t.int :storeys
      t.int :year_built
      t.text :description

      t.timestamps
    end
  end
end
