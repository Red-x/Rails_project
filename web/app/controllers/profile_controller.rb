class ProfileController < ApplicationController

def new 
@user = user.new
redirect_to(:controller=>users , :action=>'signup')
end



















end
