class CreateJobCategories < ActiveRecord::Migration
  def change
    create_table :job_categories do |t|
      t.string :name
      t.integer :job_type_id
      t.string :description
      t.boolean :status,:default => true
      t.timestamps
    end
  end
end
