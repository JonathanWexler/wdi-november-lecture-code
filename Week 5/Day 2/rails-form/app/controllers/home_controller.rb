class HomeController < ApplicationController
  def query
  end

  def search
      puts "***************"
      q = params[:query]
      puts "I was searching for: #{q}"
      @users = User.where(fname: q)


  end
end
