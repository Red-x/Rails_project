class UsersController < ApplicationController
layout 'admin'
before_action :confirmauthorized, :except => [:login, :attempt_login, :logout, :signup]
  def index
  end

  def login

  end

  def signup
  @users = user.new
  end

 
  def logout
	flash[:notice]="Logged out"
	redirect_to(:action=>'login')
	session[:user_id] = nil
	session[:username] = nil
  end

  def attempt_login
	if params[:username].present?&&params[:pasword].present?
	found_user=User.where(:username=>params[:username]).first
	if found_user
		authorized_user=found_user.authenticate(params[:password])
	end
	end
	if authorized_user
	session[:user_id] = authorized_user.id
	session[:username] = authorized_user.username
	
	redirect_to(:action=>'index')
	else
	flash[:notice]="Incorrect Username Or Password"
	redirect_to(:action=>'login')
	end
  end

end
