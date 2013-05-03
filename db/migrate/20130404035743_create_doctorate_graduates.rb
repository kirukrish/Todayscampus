class CreateDoctorateGraduates < ActiveRecord::Migration
  def change
    create_table :doctorate_graduates do |t|
      t.string :name
      t.string :description
      t.boolean :status, :default => true
      t.timestamps
    end
  end
end
