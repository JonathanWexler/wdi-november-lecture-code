class ChangeUsersFirstName < ActiveRecord::Migration
  def change
    rename_column :users, :first_name, :fname
  end
end
