class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
    add_index :users , :id 
    t.string "Title"
      t.timestamps null: false
    end
  end
end
 