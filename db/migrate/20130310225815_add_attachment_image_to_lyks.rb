class AddAttachmentImageToLyks < ActiveRecord::Migration
  def self.up
    change_table :lyks do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :lyks, :image
  end
end
