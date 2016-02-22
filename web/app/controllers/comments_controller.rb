class CommentsController < ApplicationController
	
before_action :current_user , only: [:create ]

	#@slide = Slide.find(params[:id])
    #@doc = @slide.document
    #@comment = @slide.comments.create(comment_params)
    #@comments = @slide.comments.all
   # @comment.content = "sssss"
    #@comment= Comments.new(params[ :comment])
    #@comment.slide_id = parama[:id] 
 def create
    @slide = Slide.find(params[:id])
    @comment = @slide.comments.create(comment_params)
    
  
		

	  # if @comment.save
	      
	      redirect_to(:controller=>'slides' , :action =>'index')#, :id => @comment.slide_id )
	  # else
	    #  redirect_to(:controller=>'slides' , :action =>'index')
	   # end

	end

	private
    def comment_params
      params.require(:comment).permit(:user_id, :content)
    end

    def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
			if @current_user.blank? 
			redirect_to root_url, :notice => "Sign in!"
			end
end
end
