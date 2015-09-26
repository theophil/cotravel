class CreateAccomodationUsers < ActiveRecord::Migration
  def change
    create_table :accomodation_users do |t|
      t.integer :user_id
      t.integer :accomodation_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
