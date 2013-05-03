class AddDetailsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :job_package_id, :integer
    add_column :jobs, :job_validity_id, :integer
    add_column :jobs, :required_qualification, :text
    add_column :jobs, :preferred_qualification, :text
    add_column :jobs, :additional_notes, :text
    
  end
end
