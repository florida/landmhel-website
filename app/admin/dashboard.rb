ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Inquiries" do
          table_for Inquiry.recent(10).map do
            column :name do |name|
              link_to(name.name, [:admin, name])
            end
            column :comment
          end
        end
      end

      column do
        panel "Recent Listings" do
          table_for Listing.recent(5).map do
            column :address do |listing|
              link_to(listing.address, [:admin, listing])
            end
            column :agent
          end
        end
      end
    end
  end
end
