class AddSocialMediaInputLinksToAgents < ActiveRecord::Migration
  def change
    add_column :agents, :facebook_url, :string
    add_column :agents, :twitter_url, :string
    add_column :agents, :linkedin_url, :string
    add_column :agents, :website_url, :string
  end
end
