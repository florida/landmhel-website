class ChangePhoneTypeToStringInInquiries < ActiveRecord::Migration
  def change
    change_column :inquiries, :phone, :string
  end
end
