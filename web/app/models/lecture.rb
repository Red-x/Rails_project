class Lecture < ActiveRecord::Base
	 has_many :comments
	 has_many :likes
	 belongs_to :user
     has_many :slides

end
