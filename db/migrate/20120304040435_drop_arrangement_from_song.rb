class DropArrangementFromSong < ActiveRecord::Migration
  def up
	remove_column :songs, :arrangement_id
  end

  def down
  end
end
