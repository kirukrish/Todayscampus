class Job < ActiveRecord::Base
  attr_accessible :user_id, :description, :job_category_id, :job_type_id, :title, :from_date,:to_date, :email, :url, :country_id, :full_name, :street, :street1, :city, :state_id, :zip, :job_location_attributes, :job_validity_id,  :job_package_id, :required_qualification, :preferred_qualification, :additional_notes
  
  
  belongs_to :user
  belongs_to :job_package
  belongs_to :job_validity
  belongs_to :job_category
  
  has_one :job_location,:dependent=> :destroy
  accepts_nested_attributes_for :job_location 
  
  #validations
  validates :description,:presence=>true
  validates :job_category_id,:presence=>true
  validates :job_type_id,:presence=>true
  validates :job_package_id,:presence=>{:message=>"please choose one"}
  validates :job_validity_id,:presence=>{:message=>"please choose one"}
  validates :title,:presence=>true
  validates :from_date,:presence=>true
  validates :to_date,:presence=>true
  validates :email,:presence=>true
  validates :url,:presence=>true
  validates :country_id,:presence=>true
  validates :full_name,:presence=>true
  validates :street,:presence=>true
  validates :street1,:presence=>true
  validates :city,:presence=>true
  validates :state_id,:presence=>true
  validates :zip,:presence=>true
  validates :required_qualification,:presence=>true
  validates :preferred_qualification,:presence=>true
  
end
