class CreateJons < ActiveRecord::Migration
  def change
    create_table :jons do |t|
        
      t.timestamps null: false
    end
  end
end
