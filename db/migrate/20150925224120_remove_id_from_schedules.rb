class RemoveIdFromSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :id, :int
  end
end
