class AddAttachmentMenuPhotoToMenus < ActiveRecord::Migration
  def self.up
    change_table :menus do |t|
      t.attachment :menu_photo
    end
  end

  def self.down
    remove_attachment :menus, :menu_photo
  end
end
