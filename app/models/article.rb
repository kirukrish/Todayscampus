class Article < ActiveRecord::Base
  
  belongs_to :category  
  has_and_belongs_to_many :topics
  
  attr_accessible :title, :category_id, :more_link, :brief_description, :author_name, :detail_description, :active, :topics_attributes  
  attr_accessible :topic_ids
  attr_accessible :attachment_attributes
  
  has_one :attachment, :as => :attachable, :dependent => :destroy
  accepts_nested_attributes_for :attachment
  
  #validates_presence_of :title, :presence => { :message => "Enter the Title" }
  validates_presence_of :title,  :message => "Enter the Title" 
   
  validates_presence_of :more_link, :message => "Enter the More Link"
  validates_presence_of :brief_description, :message => "Enter the Brief Description"
  validates_presence_of :detail_description, :message => "Enter the Detail Description"
  validates_presence_of :author_name, :message => "Enter the Author Name"
  #~ validates_presence_of :more_link
  #validates_presence_of :topics

 
  scope :all_active,  lambda{ where("active = ?", true ) }
  scope :search,  lambda{ |q| where("title like ? or brief_description like ? or detail_description like ? or author_name like ?", q, q, q, q) }
  scope :similar_articles,  lambda{ |article_id, category_id| where( "active =? && category_id =? && id NOT IN(?)", true, category_id, [article_id]).unscoped.limit(5) }
  default_scope order("updated_at desc")
  
  #validates_presence_of(:topics, :scope => :topics_attributes, :message => "There is already a player with that number on this team"
  
  def self.get_lists_articles
    category = Category.all_active.count
    articles1 = []
    articles2 = []
    articles3 = []
    Article.all.group_by { |t| t.category_id }.take(category).each_with_index do | (a, cats), index_val|      
      
      if (index_val  + 1) % 3 == 1
        articles1 << cats
      elsif (index_val  + 1) % 3 == 2
        articles2 << cats
      else
        articles3 << cats
      end
    end
    return articles1, articles2, articles3
  end

end