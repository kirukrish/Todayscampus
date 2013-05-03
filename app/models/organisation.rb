class Organisation < ActiveRecord::Base
  belongs_to :user
  attr_accessible :city, :content, :phone, :pin, :state, :street, :user_id, :website, :upload1, :upload2, :upload3, :upload4, :upload5
  
  has_attached_file :upload1
  has_attached_file :upload2
  has_attached_file :upload3
  has_attached_file :upload4
  has_attached_file :upload5
  
  
  #validations 
  validates :content,:presence=>{:message =>"Please fill in this field"}
  validates :street,:presence=>true
  validates :city,:presence=>true
  validates :state,:presence=>true
  validates :pin,:presence=>true
  validates :phone,:presence=>true
  validates :website,:presence=>true
  #validates_attachment_content_type :upload1,:content_type=>['image/png', 'image/jpg']
  
  validates_format_of :city, :with => /[a-zA-Z]/i , :message => "Please enter valid City"
  validates_numericality_of :phone, :message => "Please enter valid Phone Number"
  validates_numericality_of :pin, :message => "Please enter valid Zip Code"
  validates_format_of :website, :with => URI::regexp(%w(http https)), :message => "Please enter valid Website URL"
  
end
