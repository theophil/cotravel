class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.string :name
      t.datetime :check_in_time
      t.datetime :check_out_time
      t.integer :group_id
      t.boolean :is_final_plan
      t.integer :cost
      t.string :longitude
      t.string :latitude
      t.string :url

      t.timestamps
    end
  end
end
