class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new user_params 
  	if @user.save 
  		session[:user_id] = @user.id
      redirect_to posts_path
  	else 
  		render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
      render 'edit'
  end

  def update
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
   flash[:success] = "Profile destroyed."
   redirect_to root_url
  end

  private
  	def user_params
  		params.require(:user).permit(:name, :email, :password, :password_confirmation)
  	end
end
