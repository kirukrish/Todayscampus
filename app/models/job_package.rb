class JobPackage < ActiveRecord::Base
  attr_accessible :name, :description, :no_of_credits, :amount, :status
  
  has_many :jobs
  
  #validations
  validates_presence_of :name
  #validates_presence_of :description
  validates_presence_of :no_of_credits
  validates_presence_of :amount
  validates_presence_of :status
  
  scope :all_active,  lambda{ where("status = ?", true ) }
  
end