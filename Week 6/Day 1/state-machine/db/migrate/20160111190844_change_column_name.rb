class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :computers, :type, :c_type
  end
end
