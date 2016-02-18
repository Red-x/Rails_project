class Lecture < ActiveRecord::Base
	User has_many :commets
	User has_many :likes
	User has_many :lecutes
	Lecture belongs_to :user


end
