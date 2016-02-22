class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def show
    @resume = Resume.find(params[:id])
    
  end

  def create
    @resume = Resume.new(resume_params)

    if @resume.save
      #redirect_to(:action =>'index') 
      redirect_to(:controller=>'slides' , :action =>'new', :id => @resume.id )
    else
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    flash[:notice] = "Subject '#{@resume.name}' destroyed successfully."
    redirect_to(:action =>'index')
  end

  def delete
    @resume = Resume.find(params[:id])
  end

private
  def resume_params
    params.require(:resume).permit(:name, :attachment)
  end
end