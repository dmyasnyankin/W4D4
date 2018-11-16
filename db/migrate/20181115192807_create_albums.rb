class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :artist, null: false
      t.integer :user_id, null: false
      t.integer :band_id, null: false
      t.timestamps
    end
    add_index :albums, :user_id
    add_index :albums, :band_id
  end
end
