class RemoveIdFromAccomodations < ActiveRecord::Migration
  def change
    remove_column :accomodations, :id, :int
  end
end
