class AddIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :id, :int
  end
end
