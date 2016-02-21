class Like < ActiveRecord::Base
	 belongs_to :user 
	 belongs_to :lecture
	 belongs_to :slide
end
