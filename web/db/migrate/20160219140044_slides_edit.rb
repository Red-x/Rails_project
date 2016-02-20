class SlidesEdit < ActiveRecord::Migration
  def change
 add_column :slides , :attachemnet , :string
  end
end
