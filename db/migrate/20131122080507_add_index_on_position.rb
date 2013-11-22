class AddIndexOnPosition < ActiveRecord::Migration
  def change
    add_index :images, :position, order: { position: :asc }
  end
end
