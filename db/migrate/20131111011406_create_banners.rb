class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :image_file
      t.string :header
      t.text :description
      t.string :call_to_action

      t.timestamps
    end
  end
end
