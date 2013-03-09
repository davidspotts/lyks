class CreateLyks < ActiveRecord::Migration
  def change
    create_table :lyks do |t|
      t.string :description

      t.timestamps
    end
  end
end
