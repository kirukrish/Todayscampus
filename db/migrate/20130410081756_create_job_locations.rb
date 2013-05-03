class CreateJobLocations < ActiveRecord::Migration
  def change
    create_table :job_locations do |t|
      t.integer :job_id
      t.integer :job_country_id
      t.string :job_city
      t.integer :job_state_id
      t.string :job_zip
      
      t.timestamps
    end
  end
end
