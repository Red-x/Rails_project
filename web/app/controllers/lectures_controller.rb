class LecturesController < ApplicationController
  layout false
  def index
   @lectures = Lecture.order("id ASC")
  end

  def show
  @lecture =Lecture.find(params[:id])
  end

  def new
 @lecture =Lecture.new({:Title => 'Default'})
  end

  def create
      @resume = Resume.find(params[:id])
      @lecture = Lecture.new
      @lecture.name = @resume.name
      @lecture.id = @resume.id
      if @lecture.save
        redirect_to(:controller=>'slides' , :action =>'new')
      else
        render('new')
        end
      end

def delete 
  end

  private
  def lecture_params
params.require(:lecture).permit(:Title)
  end

end
