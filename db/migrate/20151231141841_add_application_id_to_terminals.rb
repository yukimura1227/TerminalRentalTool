class AddApplicationIdToTerminals < ActiveRecord::Migration
  def change
    add_column :terminals, :application_id, :integer
  end
end
