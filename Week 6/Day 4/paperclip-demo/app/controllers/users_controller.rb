class UsersController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def create
    puts "******************"
    @user = User.create(user_params)
    redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
      params.require(:user).permit(:email, :password, :avatar)
  end
end
