class AddAttachmentAgrementToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :agrement
    end
  end

  def self.down
    drop_attached_file :users, :agrement
  end
end
