class PostsController < ApplicationController
  def index
    @posts = Post.all
end

def show
   @post =  Post.find(params[:id])

end

def new
   @post =  Post.new
end

def edit
   @post =  Post.find(params[:id])
end

def destroy
   @post =  Post.find(params[:id])
   @post.destroy
end
end
