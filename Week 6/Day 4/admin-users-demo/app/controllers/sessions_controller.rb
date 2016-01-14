class SessionsController < ApplicationController
  def new
    # gets the new.html.erb login form
    # @user = User.new
end

def create
      # creates the session to login the user
      puts "****** ADMIN"
      puts params
      puts "CREATING SESSION"
      if params[:admin]
         @admin = Admin.where(email: params[:email]).first

         if @admin && @admin.authenticate(params[:password])
            session[:admin_id] = @admin.id
            redirect_to admin_path @admin

        else
            flash[:alert] = "Login Has Failed!"
            render :new
        end
    else
     @user = User.where(email: params[:email]).first

     if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path @user

    else
        flash[:alert] = "Login Has Failed!"
        render :new
    end
end

end

def destroy
  session[:user_id] = nil
  session[:admin_id] = nil
  redirect_to root_path
end
end
