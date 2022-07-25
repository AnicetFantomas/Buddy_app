class CreateBuddies < ActiveRecord::Migration[7.0]
  def change
    create_table :buddies do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.string :github

      t.timestamps
    end
  end
end
