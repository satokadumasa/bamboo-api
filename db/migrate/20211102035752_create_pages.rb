class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.integer :user_id
      t.integer :note_id
      t.string :title
      t.text :outline
      t.text :detail

      t.timestamps
    end
  end
end
