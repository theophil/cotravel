class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
