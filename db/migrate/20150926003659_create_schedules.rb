class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :group_id
      t.datetime :date

      t.timestamps
    end
  end
end
