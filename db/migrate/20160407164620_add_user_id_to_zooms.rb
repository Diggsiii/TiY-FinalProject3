class AddUserIdToZooms < ActiveRecord::Migration
  def change
    add_column :zooms, :user_id, :integer
    add_index :zooms, :user_id
  end
end
