class AddOsVersionToTerminals < ActiveRecord::Migration
  def change
    add_column :terminals, :os_version, :string
  end
end
