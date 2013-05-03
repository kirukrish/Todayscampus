class CreateJobPackages < ActiveRecord::Migration
  def change
    create_table :job_packages do |t|
      t.string :name
      t.string :description
      t.decimal :amount
      t.integer :no_of_credits
      t.boolean :status, :default => true

      t.timestamps
    end
  end
end
