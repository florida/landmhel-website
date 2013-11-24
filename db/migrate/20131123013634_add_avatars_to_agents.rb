class AddAvatarsToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :avatar, :string
  end
end
