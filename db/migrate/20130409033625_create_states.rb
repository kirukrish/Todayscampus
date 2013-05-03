class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.integer :country_id
      t.string :short_code
      t.boolean :status, :default => true

      t.timestamps
    end
  end
end
