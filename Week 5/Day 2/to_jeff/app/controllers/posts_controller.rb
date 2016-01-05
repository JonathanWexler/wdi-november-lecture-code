class PostsController < ApplicationController
    include Adjectives
  def index
  end

  def create
    info = params[:post]
    content = jeffify(info[:content])
    @post = Post.new(content: content)
    if @post.save
        current_user.posts.push(@post)
        flash[:notice] = "Your account was created
        successfully."
        redirect_to user_path current_user
    end
end

def jeffify post
    jeffed_post = ""
    post.split.each do |word|
        if is_adjective?(word)
            puts "CHECKING......"
            puts word
            word = "jeff"
            puts true
        end
        jeffed_post += " " + word
    end
    jeffed_post
end

def edit
end

def show
end
end
