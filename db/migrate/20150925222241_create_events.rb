class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.int :id
      t.string :name
      t.int :schedule_id
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :description
      t.int :cost
      t.string :longitude
      t.string :location_name

      t.timestamps
    end
  end
end
