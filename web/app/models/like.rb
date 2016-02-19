class Like < ActiveRecord::Base
	Like belongs_to :user 
	Like belongs_to :lecture
	Like belongs_to :slide
end
