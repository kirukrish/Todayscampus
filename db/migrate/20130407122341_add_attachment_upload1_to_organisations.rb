class AddAttachmentUpload1ToOrganisations < ActiveRecord::Migration
  def self.up
    change_table :organisations do |t|
      t.attachment :upload1
      t.attachment :upload2
      t.attachment :upload3
      t.attachment :upload4
      t.attachment :upload5
    end
  end

  def self.down
    drop_attached_file :organisations, :upload1
    drop_attached_file :organisations, :upload2
    drop_attached_file :organisations, :upload3
    drop_attached_file :organisations, :upload4
    drop_attached_file :organisations, :upload5
  end
end
