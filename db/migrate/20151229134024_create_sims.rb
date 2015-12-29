class CreateSims < ActiveRecord::Migration
  def change
    create_table :sims do |t|
      t.string :phone_number
      t.integer :rental_status_id
      t.string :remark

      t.timestamps
    end
  end
end
