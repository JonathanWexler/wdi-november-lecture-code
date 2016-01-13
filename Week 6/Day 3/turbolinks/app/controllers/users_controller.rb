class UsersController < ApplicationController
  def index
    @users = User.all
end

def new
    @user = User.new
end

def home
  500000.times do |i|
    print i+2
end
end
def create
    500000.times do |i|
        print i+2
    end
    redirect_to root_path
end

def show
    @user = User.find(params[:id])
end

def edit
end
end
