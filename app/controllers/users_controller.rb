class UsersController < ApplicationController
  before_action :check_if_owner_or_admin, :only => [:edit, :update, :destroy]

  def check_if_owner_or_admin
    user = User.find(params[:id])
    unless (user.id == current_user.id) || current_user.admin
      redirect_to photos_url, :notice => "You might be the user to do that!"
    end
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.email = params[:email]
    @user.image_url = params[:image_url]

    if @user.save
      redirect_to users_url, :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.name = params[:name]
    @user.email = params[:email]
    @user.image_url = params[:image_url]

    if @user.save
      redirect_to user_url(@user.id), :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to users_url, :notice => "User deleted."
  end
end
