class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.int :id
      t.string :name
      t.int :group_admin_id

      t.timestamps
    end
  end
end
