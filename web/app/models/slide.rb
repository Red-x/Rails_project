class Slide < ActiveRecord::Base
	User has_many :commets
	User has_many :likes
end
