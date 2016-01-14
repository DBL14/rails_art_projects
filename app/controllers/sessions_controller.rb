class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by_email(params[:email])
  	if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
  		redirect_to posts_path, notice: "logged in"
  	else
  		flash.now.alert = "Please try again"
  		render "new"
  	end
  end

  def destroy
    puts params
    session[:user_id] = nil
  	redirect_to root_url, notice: "logged out"
  end
end
