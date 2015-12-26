class CreateApplicationTypes < ActiveRecord::Migration
  def change
    create_table :application_types do |t|
      t.string :name
      t.string :remark

      t.timestamps
    end
  end
end
