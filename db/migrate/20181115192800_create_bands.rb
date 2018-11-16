class CreateBands < ActiveRecord::Migration[5.1]
  def change
    create_table :bands do |t|
      t.string :name, null: false
      t.string :artist, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
    add_index :bands, :user_id
  end
end
