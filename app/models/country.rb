class Country < ActiveRecord::Base
  attr_accessible :name, :short_code,:status
  
  has_many :states
  #belongs_to :job
  validates_presence_of :name,:message => "Name can't be blank"
  
end
