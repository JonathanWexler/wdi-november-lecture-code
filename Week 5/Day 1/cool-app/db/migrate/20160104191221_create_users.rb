class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :lname
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
