class ChangePhoneToIntegers < ActiveRecord::Migration
  def change
    change_column :agents, :phone, :integer
  end
end
