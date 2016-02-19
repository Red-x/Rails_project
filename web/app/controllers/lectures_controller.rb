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
@lecture = Lecture.new(lecture_params)
if @lecture.save
  redirect_to(:action =>'index')
else
  render('new')
  end
end
  private
  def lecture_params
params.require(:lecture).permit(:Title)
  end
end
