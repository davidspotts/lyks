class AddUserIdtoLyks < ActiveRecord::Migration
  def change
  	add_column :lyks, :user_id, :integer
  	add_index :lyks, :user_id
  end

  def down
  end
end
