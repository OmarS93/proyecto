class AddAttachmentImageToOperations < ActiveRecord::Migration
  def self.up
    change_table :operations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :operations, :image
  end
end
