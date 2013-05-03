class JobLocation < ActiveRecord::Base
   attr_accessible :job_country_id, :job_city, :job_state_id, :job_zip
  belongs_to :job
  belongs_to :state ,:class_name => "State", :foreign_key => "job_state_id"
  
  #validations
  validates :job_country_id,:presence=>true
  validates :job_city,:presence=>true
  validates :job_state_id, :presence=>true
  validates :job_zip,:presence=>true
  
  validates_format_of :job_city, :with => /[a-zA-Z]/i , :message => "Please enter valid City"
  validates_format_of :job_state_id, :with => /[a-zA-Z]/i , :message => "Please enter valid State"
  validates_format_of :job_zip, :with => /^[0-9]+$/, :message => "Please enter valid Zip Code"
  
end
