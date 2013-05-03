class CreateJobTypes < ActiveRecord::Migration
  def change
    create_table :job_types do |t|
      t.string :name
      t.string :description
      t.boolean :status,:default => true

      t.timestamps
    end
  end
end
