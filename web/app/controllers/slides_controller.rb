class SlidesController < ApplicationController
 layout false
  def index
   @slides = Slide.all
  end
  
  def new
  	@slide
  	#@lecture = Lecture.find(params[:id])
  	@resume = Resume.find(params[:id])
  	
  	#require 'RMagick'
  	#pdf = Magick::ImageList.new(@resume.attachment.url)
  	#pdf.each do |image|
  	#@slide.lecture_id =  resume.id
	#@slide.save
	#@slide.attachment=thumb.write "#{@resume.name+resume.id.to_s}+_+#{@slide.id}+.jpg"

	
      pdf = Grim.reap('public' + @resume.attachment.url)
      @count = pdf.count
      
     for i in 0...@count

      pdf[i].save("app/assets/images/#{@resume.id}.#{i}.jpg", { :height => 1000 })
      @lecture.slides.create(:attachment=> "#{@resume.id}.#{i}.jpg")
     
      end

      redirect_to(:controller=>'resumes' , :action =>'index')
      #redirect_to(:action => 'please_wait')
      flash[:notice] = "The document #{@resumes.name} has been uploaded."

  end

  def show
  @slide =Slide.find(params[:id])
  end
 end
