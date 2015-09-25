class CreateAccomodationUsers < ActiveRecord::Migration
  def change
    create_table :accomodation_users do |t|
      t.int :user_id
      t.int :accomodation_id
      t.boolean :like
      t.boolean :dislike

      t.timestamps
    end
  end
end
