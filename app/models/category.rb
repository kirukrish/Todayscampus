class Category < ActiveRecord::Base
  
  has_many :articles

  attr_accessible :name, :active

  validates_presence_of :name
  
  scope :all_active,  lambda{ where("active = ?", true ) }
  default_scope order("updated_at desc")
end