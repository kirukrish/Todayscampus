class RenameFieldAuthorNmaeInArticle < ActiveRecord::Migration
  def up
    rename_column :articles, :author_nmae, :author_name
  end

  def down
    rename_column :articles, :author_name, :author_nmae
  end
end
