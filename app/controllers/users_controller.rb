class UsersController < ApplicationController

  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def update
    params.permit!
    @user = User.find(params[:id])

    if params[:user]
      if @user.update_attributes(params[:user])
        flash[:notice] = "User was successfully updated!"
        redirect_to :action => :show, :id => @user and return
      else
        render :action => :edit and return
      end
    end
  end

end
