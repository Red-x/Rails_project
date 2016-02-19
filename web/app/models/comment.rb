class Comment < ActiveRecord::Base
	Comment belongs_to :user
	Comment belongs_to :lecture
	Comment belongs_to :slide
end
