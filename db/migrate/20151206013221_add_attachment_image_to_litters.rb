class AddAttachmentImageToLitters < ActiveRecord::Migration
  def self.up
    change_table :litters do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :litters, :image
  end
end
