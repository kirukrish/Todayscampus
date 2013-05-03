class AddUserRoleInUsers < ActiveRecord::Migration
  def up
    add_column :users, :user_role, :string
    add_column :users, :is_admin, :boolean
  end

  def down
    remove_column :users, :user_role
    remove_column :users, :is_admin
  end
end
