class JobType < ActiveRecord::Base
  attr_accessible :name, :description, :status
  
  has_many :job_categories
  
  validates_presence_of :name,:message => "Name can't be blank"
  validates_presence_of :description,:message => "Description can't be blank"
end
