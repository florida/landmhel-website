class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.text :address
      t.string :area
      t.string :property_type
      t.string :building_type
      t.integer :no_of_bedrooms
      t.integer :no_of_bathrooms
      t.decimal :price
      t.boolean :featured
      t.boolean :sold
      t.integer :storeys
      t.integer :year_built
      t.text :description

      t.timestamps
    end
  end
end
