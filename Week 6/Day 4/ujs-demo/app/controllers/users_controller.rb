class UsersController < ApplicationController
  def index
    @users = User.all
end

def new
    @user = User.new
end
def create
  @user = User.create(user_params)
  redirect_to root_path
end

def destroy
    puts "destroy"
  User.destroy(params[:id])
  respond_to do |format|
    format.js
end
end

private

def user_params
  params.require(:user).permit(:email, :password)
end
end
