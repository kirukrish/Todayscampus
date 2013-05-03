class Topic < ActiveRecord::Base
  #resourcify
  attr_accessible :description, :title
  validates :title, :presence => true, :uniqueness => true
  
  #~ has_many :article_topics
  #~ has_many :articles, :through => :article_topics
  has_and_belongs_to_many :articles
end
