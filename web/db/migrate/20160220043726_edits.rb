class Edits < ActiveRecord::Migration
  def change
  remove_column :users , :password
  add_column :users , :hashed_password ,:string
  end
end
