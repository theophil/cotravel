class CreateTransportations < ActiveRecord::Migration
  def change
    create_table :transportations do |t|
      t.integer :group_id
      t.boolean :is_final_plan
      t.boolean :like
      t.boolean :dislike
      t.string :departure_location
      t.string :arrival_location
      t.text :description

      t.timestamps
    end
  end
end
