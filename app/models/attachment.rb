class Attachment < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :attachment_content_type, :attachment_file_name, :attachment_file_size,:data
  
  belongs_to :attachable, :polymorphic => true
  
    # Paperclip
  has_attached_file :data,
    :styles => {
      :small => "100",
      :full => "400"
    }

  #validates_attachment_content_type :attachment, :content_type => 'image/jpeg'
  
  #validates_presence_of :attachment_file_name


end