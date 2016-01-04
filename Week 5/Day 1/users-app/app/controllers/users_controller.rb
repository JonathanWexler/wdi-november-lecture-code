class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
      puts "DESTROYED!!"
      User.find(params[:id]).destroy
      redirect_to users_path
  end


end
