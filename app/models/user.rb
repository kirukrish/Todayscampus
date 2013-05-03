class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :remember_me, :user_role, :institution, :is_admin, :organisation_id, :organisation_attributes
  
  has_and_belongs_to_many :roles, :join_table => :users_roles
  has_one :organisation
  has_many :jobs
  
    #validates :user_role, :presence => { :message => "Select the Register As" }, :inclusion => { :in => %w(jobseeker employer),    :message => "%{value} is not a valid User type", :allow_blank => true }
    
  validates :institution, :presence => { :message => "Enter the First Name Institution can't be blank" }, :if => Proc.new { |a| a.user_role == "employer" }
  validates :first_name,:presence=>{ :message => "Enter the First Name" }
  validates :last_name,:presence=>{ :message => "Enter the First Name" }
  
  validates_format_of :first_name, :with => /[a-zA-Z]/i , :message => "Please enter valid First Name"
  validates_format_of :last_name, :with => /[a-zA-Z]/i , :message => "Please enter valid Last Name"
  
  validates :user_role, :presence => { :message => "Select the Register As" }
  
  accepts_nested_attributes_for :organisation
  
  after_create :assign_an_organisation
  
  def assign_an_organisation
    org=Organisation.new(:user_id=>self.id)
    org.save(:validate=>false)
    self.update_attributes(:organisation_id =>org.id )
  end
  

end