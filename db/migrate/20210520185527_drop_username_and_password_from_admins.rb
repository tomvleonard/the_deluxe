class DropUsernameAndPasswordFromAdmins < ActiveRecord::Migration[6.1]
  def change
    remove_column :admins, :username
    remove_column :admins, :password
  end
end
