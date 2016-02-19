class Slide < ActiveRecord::Base
	Slide has_many :comments
	Slide has_many :likes
	Slide belongs_to :lecture
end
