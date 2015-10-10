class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :schedule_id
      t.datetime :start_time
      t.datetime :end_time
      t.datetime :description
      t.integer :cost
      t.string :longitude
      t.string :latitude
      t.string :location_name

      t.timestamps
    end
  end
end
