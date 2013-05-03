class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.integer :user_id
      t.text :content
      t.string :street
      t.string :city
      t.string :state
      t.string :pin
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
