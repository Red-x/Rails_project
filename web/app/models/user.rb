class User < ActiveRecord::Base
	User has_many :comments
	User has_many :likes
	User has_many :lectures
end
