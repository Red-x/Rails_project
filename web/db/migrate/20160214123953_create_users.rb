class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.string "frist_name",:limit=>25
    t.string "last_name", :limit=>25
    t.string "email" 	
    t.string "password", :limit=>25 ,null: false

      t.timestamps null: false
    end
  end
end
