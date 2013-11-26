class RemoveListingIdFromAgents < ActiveRecord::Migration
  def change
    remove_column :agents, :listing_id
  end
end
