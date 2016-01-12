class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    if @current_user != nil 
		  return @current_user
    end

  #if we have a user id stored in the session - all other controllers inherit from application controller
  	if session[:user_id]
  		@current_user = User.find(session[:user_id])#see who is logged in
      return @current_user 
  	else
  		return false
    end
  end

  def logged_in?
  	!!current_user #returns true or false
  end 		

  def authenticate
    unless logged_in?
    	redirect_to "/sessions/new"
    end
  end

end