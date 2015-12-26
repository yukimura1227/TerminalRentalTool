class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :version
      t.references :application_type, index: true
      t.string :remark

      t.timestamps
    end
  end
end
