class AddAttachmentImgToResources < ActiveRecord::Migration
  def self.up
    change_table :resources do |t|
      t.attachment :img
    end
  end

  def self.down
    drop_attached_file :resources, :img
  end
end
