class Like < ActiveRecord::Base
	 belongs_to :user 
	 belongs_to :resume
	 belongs_to :slide
end
