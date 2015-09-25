class CreateEventUsers < ActiveRecord::Migration
  def change
    create_table :event_users do |t|
      t.int :event_id
      t.int :user_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
