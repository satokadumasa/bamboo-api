class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :title
      t.text :outline
      t.text :detail

      t.timestamps
    end
  end
end
