class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      add_index :lectures , :id
      t.timestamps null: false
    end
  end
end
