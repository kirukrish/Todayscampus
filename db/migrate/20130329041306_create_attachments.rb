class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.integer :attachable_id
      t.string :attachable_type
      t.string :attachable_content_type
      t.string :attachable_file_name
      t.string :attachable_file_size

      t.timestamps
    end
  end
end
