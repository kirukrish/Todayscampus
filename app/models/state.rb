class State < ActiveRecord::Base
   attr_accessible :name, :short_code, :country_id, :status
   belongs_to :country
   has_many :job_locations
   
  validates_presence_of :name,:message => "Name can't be blank"
  validates_presence_of :country_id,:message => "Country can't be blank"
  
end
