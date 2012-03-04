class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :arrangement_id
      t.integer :user_id
      t.integer :points
      t.string :accuracy
      t.boolean :is_master_mode

      t.timestamps
    end
  end
end
