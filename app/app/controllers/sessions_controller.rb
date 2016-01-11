class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		redirect_to root_path, notice: "logged in"
  	else
  		flash.now.alert = "Please try again"
  		render "new"
  	end
  end

  def destroy
  end
end
