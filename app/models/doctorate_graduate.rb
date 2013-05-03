class DoctorateGraduate < ActiveRecord::Base
  attr_accessible :name, :description, :status   
  validates_presence_of :name
  validates_presence_of :description
end
