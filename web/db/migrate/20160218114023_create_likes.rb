class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      add_index :users , :id 
     
      t.timestamps null: false
    end
  end
end
