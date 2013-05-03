class CreateJobValidities < ActiveRecord::Migration
  def change
    create_table :job_validities do |t|
      t.string :name
      t.decimal :amount
      t.integer :no_of_credits
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
