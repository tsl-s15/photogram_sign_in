class PhotosController < ApplicationController
  before_action :check_if_owner_or_admin, :only => [:edit, :update, :destroy]

  def check_if_owner_or_admin
    photo = Photo.find(params[:id])
    unless (photo.user_id == current_user.id) || current_user.admin
      redirect_to photos_url, :notice => "You might be the photo's owner to do that!"
    end
  end


  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
    @users = User.all
  end

  def create
    @photo = Photo.new
    @photo.source = params[:source]
    @photo.caption = params[:caption]
    @photo.user_id = params[:user_id]

    if @photo.save
      redirect_to "/photos/#{ @photo.id }"
    else
      render 'new'
    end
end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to "/photos"
  end

  def edit
    @photo = Photo.find(params[:id])
    @users = User.all
  end

  def update
    @photo = Photo.find(params[:id])
    @photo.source = params[:source]
    @photo.caption = params[:caption]
    @photo.user_id = params[:user_id]
    @photo.save

    redirect_to "/photos/#{ @photo.id }"
  end

  def index
    @photos = Photo.all
    @comment = Comment.new
  end
end
