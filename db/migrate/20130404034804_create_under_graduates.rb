class CreateUnderGraduates < ActiveRecord::Migration
  def change
    create_table :under_graduates do |t|
      t.string :name
      t.string :description
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
