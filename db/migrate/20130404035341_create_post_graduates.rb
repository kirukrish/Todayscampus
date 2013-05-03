class CreatePostGraduates < ActiveRecord::Migration
  def change
    create_table :post_graduates do |t|
      t.string :name
      t.string :description
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
