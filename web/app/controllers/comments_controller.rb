class CommentsController < ApplicationController

def index
	@comments=Comment.all
end

def new
	@comments=Comment.new
end

def create
	@comments=Comment.new(comment_params)
	if @comments.save
	redirect_to '/comments'
	else
	render 'new'
	end
end

private
def comment_params
	params.require(:comment).permit(:content)
end


end
