class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.text :brief_description
      t.text :detail_description
      t.string :author_nmae
      t.string :more_link

      t.timestamps
    end
  end
end
