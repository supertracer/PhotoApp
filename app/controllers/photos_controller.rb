class PhotosController < ApplicationController
  layout 'home'
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save!
      redirect_to users_path
    else
      flash[:notice] = "upload error"
    end

  end

  def delete
  end

  private
    def photo_params
      params.require(:photo).permit(:image,:image_caption,:user_id)
    end
end
