class CreateTransportationUsers < ActiveRecord::Migration
  def change
    create_table :transportation_users do |t|
      t.int :user_id
      t.int :transporation_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
