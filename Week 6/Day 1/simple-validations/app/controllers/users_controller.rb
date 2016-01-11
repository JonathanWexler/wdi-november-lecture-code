class UsersController < ApplicationController
  def new
    @user = User.new
end

def create
  @user = User.new(user_params)
  if @user.save
    puts "SAVED USER"
else
    puts "ISSUE WITH SAVING USER"  
end
puts params
puts "****************"
    # redirect_to new_user_path
    render :new
end


private

def user_params
  params.require(:user).permit(:fname, :email, :password)
end
end
