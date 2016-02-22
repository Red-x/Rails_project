class AddIndex < ActiveRecord::Migration
  def change
  	add_column :comments , :user_id , :integer
  	add_column :comments , :resume_id , :integer
 	add_column :comments , :slide_id , :integer

  	add_index :comments , :user_id 
	add_index :comments , :resume_id
	add_index :comments , :slide_id 

	add_column :likes , :slide_id , :integer
	add_column :likes , :user_id , 	:integer
	add_column :likes , :resume_id , :integer

	add_index :likes , :user_id 
	add_index :likes , :resume_id
	add_index :likes , :slide_id 

	add_column :resumes , :user_id, :integer
	add_index :resumes  ,:user_id

	add_column :slides , :resume_id, :integer
	add_index :slides, :resume_id
  end
	
end
