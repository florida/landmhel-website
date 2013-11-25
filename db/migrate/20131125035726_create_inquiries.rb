class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :listing_id
      t.text :commment

      t.timestamps
    end
  end
end
