class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new


     if @image.save
       redirect_to topics_path
     end

  end
end
