class CreateMutters < ActiveRecord::Migration[6.1]
  def change
    create_table :mutters do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
