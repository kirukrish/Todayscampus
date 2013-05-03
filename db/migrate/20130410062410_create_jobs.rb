class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.integer :job_type_id
      t.integer :job_category_id
      t.string :email
      t.string :url
      t.integer :country_id
      t.string :full_name
      t.string :street
      t.string :street1
      t.string :city
      t.integer :state_id
      t.string :zip
      t.datetime :from_date
      t.datetime :to_date

      t.timestamps
    end
  end
end
