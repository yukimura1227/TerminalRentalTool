class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.string :imei
      t.integer :rental_status_id
      t.string :remark

      t.timestamps
    end
  end
end
