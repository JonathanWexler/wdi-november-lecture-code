class UsersController < ApplicationController
def index
    @users = User.all
end

def new
    @user = User.new
end

def create
  puts "CREATING USER"

  puts "THESE ARE THE USER'S PARAMS: "
  puts params[:user]
  # User.create(params[:user])

  @user = User.new(params[:user])
    if @user.save
        flash[:notice] = "Your account was created
        successfully."
        redirect_to user_path @user
    else
        flash[:alert] = "There was a problem saving your
        account."
        redirect_to new_user_path
    end
      # redirect_to root_path
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
      @user = User.find(params[:id])
  end

  def update
      puts "UPDATING USER"
      puts params
      @user = User.find(params[:id])
      @user.update_attributes(params[:user])
      redirect_to user_path @user
  end
end
