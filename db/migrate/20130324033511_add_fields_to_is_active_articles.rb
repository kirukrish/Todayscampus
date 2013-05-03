class AddFieldsToIsActiveArticles < ActiveRecord::Migration
  
  def up
    add_column :articles, :active,:boolean, :default => true
    add_column :categories, :active,:boolean, :default => true
    add_column :categories, :description,:string
  end
  
  def down
    remove_column :articles, :active
    remove_column :categories, :active
    remove_column :categories, :description,:string
  end
  
end
