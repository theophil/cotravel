class CreateGroupUsers < ActiveRecord::Migration
  def change
    create_table :group_users do |t|
      t.int :user_id
      t.int :group_id

      t.timestamps
    end
  end
end
