class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.integer :song_id
      t.string :name

      t.timestamps
    end
  end
end
