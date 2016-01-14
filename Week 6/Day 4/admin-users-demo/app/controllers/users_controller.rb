class UsersController < ApplicationController
  def new
    @user = User.new
end

def create
    @user = User.new(user_params)

    if @user.save
        redirect_to @user
   else
       redirect_to new_user_path
   end
end

def edit
end

def update

end

def show
    @user = User.find(params[:id])
end

def index
    @users = User.all
end

def destroy
    puts "***** DELETING *****"
    @user = User.find(params[:id])
    @user.destroy
    redirect_to logout_user_path, method: :delete

    # User.destroy(params[:id])
end

private

def user_params
    params.require(:user).permit(:email, :password)
end
end
