class JobCategory < ActiveRecord::Base
  attr_accessible :name, :description, :status, :job_type_id
  belongs_to :job_type
  has_many :jobs
  
  validates_presence_of :name,:message => "Name can't be blank"
  validates_presence_of :description,:message => "Description can't be blank"
  validates_presence_of :job_type_id,:message => "job type n't be blank"
  
end
