class CreateArticlesTopics < ActiveRecord::Migration
  def change
    create_table :articles_topics do |t|
      t.integer :article_id
      t.integer :topic_id
      #t.timestamps
    end
  end
end
