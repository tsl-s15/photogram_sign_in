class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
  end

  def create
    @photo = Photo.new
    @photo.source = params[:source]
    @photo.caption = params[:caption]
    @photo.save

    redirect_to "/photos/#{ @photo.id }"
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to "/photos"
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.source = params[:source]
    @photo.caption = params[:caption]
    @photo.save

    redirect_to "/photos/#{ @photo.id }"
  end

  def index
    @photos = Photo.all
  end
end
