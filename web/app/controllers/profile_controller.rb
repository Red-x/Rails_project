class ProfileController < ApplicationController

def new 

redirect_to(:controller=>'users' , :action=>'signup')
end


def index
	@users = user.all
end


end
