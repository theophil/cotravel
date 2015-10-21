class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :group_id
      t.datetime :start_date
      t.datetime :end_date
      t.string		:location
      t.string :name

      t.timestamps
    end
  end
end
