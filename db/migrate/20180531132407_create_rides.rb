class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.integer  :user_id
      t.integer  :attraction_id

      t.timestamps
    end
    add_index :rides, :user_id
    add_index :rides, :attraction_id

  end
end
