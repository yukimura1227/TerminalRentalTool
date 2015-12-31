class AddTerminalIdToSims < ActiveRecord::Migration
  def change
    add_column :sims, :terminal_id, :integer
  end
end
