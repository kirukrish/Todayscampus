class AddInstitutionInUser < ActiveRecord::Migration
  def up
    add_column :users, :institution, :string
  end

  def down
    remove_column :users, :institution
  end
end
