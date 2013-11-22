class AddPositionToImages < ActiveRecord::Migration
  def change
    add_column :images, :position, :int
  end
end
