class CommentsController < ApplicationController

def index
	@comments = comment.all
end

def new
	@comments = comment.new
end

def create
	@comments = comment.new(comment_params)
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
