class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.int :id
      t.int :group_id
      t.datetime :date

      t.timestamps
    end
  end
end
