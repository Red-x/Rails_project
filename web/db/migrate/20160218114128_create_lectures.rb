class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures , {:id => false } do |t|
	    t.integer :id 
	    t.string :name
	    t.timestamps null: false
	    end
	    add_index :lectures , :id
	    
  end
end
 