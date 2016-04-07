class AddAttachmentImageToZooms < ActiveRecord::Migration
  def self.up
    change_table :zooms do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :zooms, :image
  end
end
