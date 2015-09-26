class CreateTransportationUsers < ActiveRecord::Migration
  def change
    create_table :transportation_users do |t|
      t.integer :user_id
      t.integer :transporation_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
