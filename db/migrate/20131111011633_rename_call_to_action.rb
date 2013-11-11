class RenameCallToAction < ActiveRecord::Migration
  def change
    rename_column :banners, :call_to_action, :link_name
    add_column :banners, :link_url, :string
  end
end
