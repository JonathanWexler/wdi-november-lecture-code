class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :type
      t.string :model
      t.integer :condition

      t.timestamps null: false
    end
  end
end
