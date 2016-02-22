class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    #redirect_to root_url, :notice => "Signed up!"
    #flash[:notice] = " welcome '#{@user.email}'"
    redirect_to(:controller=>'resumes' , :action =>'index')
  else
    render "new"

  end
end
private

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
end
private

def current_user
  @current_user ||= User.find(session[:user_id]) if session[:user_id]
end
end

