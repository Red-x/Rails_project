class SlidesController < ApplicationController
 layout false
  def index
   @slides = Slide.all
  end
  
  def new
  	@slide

  	@resume = Resume.find(params[:id])
  	
  	#require 'RMagick'
  	#pdf = Magick::ImageList.new(@resume.attachment.url)
  	#pdf.each do |image|
  	#@slide.lecture_id =  resume.id
	#@slide.save
	#@slide.attachment=thumb.write "#{@resume.name+resume.id.to_s}+_+#{@slide.id}+.jpg"
	@attachment = @resume.attachment

      pdf = Grim.reap('public' + @attachment.url)
      @count = pdf.count
      
     for i in 0...@count
     	
      pdf[i].save("app/assets/images/#{@resume.id}.#{i}.png", { :height => 1000 })
      Resume.find(params[:id]).slides.create(:resume_id=> @resume.id,:name=> "#{@resume.id}.#{i}.png" )
      
     
      end

      redirect_to(:controller=>'resumes' , :action =>'index')
      #redirect_to(:action => 'please_wait')
      flash[:notice] = "The document #{@resume.name} has been uploaded."

  end

  def show
  @slide =Slide.find(params[:id])
  @users=User.all

  end
 end
