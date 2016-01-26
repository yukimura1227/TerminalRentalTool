class CreatePcTerminals < ActiveRecord::Migration
  def change
    create_table :pc_terminals do |t|
      t.string :name
      t.string :manage_id
      t.integer :rental_status_id
      t.string :remark

      t.timestamps
    end
  end
end
