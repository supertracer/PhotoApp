class UsersController < ApplicationController
  before_action :authenticate_user!
  layout 'home'
  
  def index
    if current_user
     @user = current_user
   else
     redirect_to new_user_session_path, notice: 'You are not logged in.'
   end
  end

  def edit
  end

  def show 
    @user = User.find(params[:id])
  end

  def subscribe_other
    @users = User.all
  end

  def profile
    @user = User.find(params[:id])
  end

end
