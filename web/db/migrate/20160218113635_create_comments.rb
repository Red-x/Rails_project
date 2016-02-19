class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string "content" ,null: false 
        add_index :users , :id 
        add_index :lectures , :id
        add_index :slides , :id 
      t.timestamps null: false
    end
  end
end
