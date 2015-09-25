class RemoveIntFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :int, :id
  end
end
