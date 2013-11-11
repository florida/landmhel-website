class CreateBlobs < ActiveRecord::Migration
  def change
    create_table :blobs do |t|
      t.string :header
      t.text :description
      t.string :link_name
      t.string :link_url

      t.timestamps
    end
  end
end
