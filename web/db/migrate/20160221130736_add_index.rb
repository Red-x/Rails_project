class AddIndex < ActiveRecord::Migration
  def change
  	add_column :comments , :user_id , :integer
  	add_column :comments , :lecture_id , :integer
 	add_column :comments , :slide_id , :integer

  	add_index :comments , :user_id 
	add_index :comments , :lecture_id
	add_index :comments , :slide_id 

	add_column :likes , :slide_id , :integer
	add_column :likes , :user_id , 	:integer
	add_column :likes , :lecture_id , :integer

	add_index :likes , :user_id 
	add_index :likes , :lecture_id
	add_index :likes , :slide_id 

	add_column :lectures , :user_id, :integer
	add_index :lectures ,:user_id

	add_column :slides , :lecture_id, :integer
	add_index :slides, :lecture_id
  end
	
end
