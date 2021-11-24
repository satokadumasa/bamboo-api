class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :pref_id
      t.string :city
      t.text :memo

      t.timestamps
    end
  end
end
