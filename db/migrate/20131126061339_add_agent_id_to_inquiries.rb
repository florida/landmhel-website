class AddAgentIdToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :agent_id, :integer
  end
end
