class Slide < ActiveRecord::Base
	 has_many :comments
	 has_many :likes
	 belongs_to :lecture
end
