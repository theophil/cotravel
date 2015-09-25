class RemoveIdFromGroups < ActiveRecord::Migration
  def change
    remove_column :groups, :id, :int
  end
end
