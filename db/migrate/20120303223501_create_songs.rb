class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :arrangement_id
      t.string :name
      t.string :artist
      t.string :album
      t.integer :year

      t.timestamps
    end
  end
end
