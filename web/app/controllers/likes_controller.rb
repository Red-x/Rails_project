class LikesController < ApplicationController
  def add_like
  @like=Like.new
  end
  def create
  @like = Like.new(user_params)
  if @like.save
    #redirect_to root_url, :notice => "Signed up!"
    #flash[:notice] = " welcome '#{@user.email}'"
    redirect_to(:controller=>'slides' , :action =>'index')
  else
    render "new"

  end
end
private

  def user_params
    params.require(:like).permit(:email, :password)
end
end
