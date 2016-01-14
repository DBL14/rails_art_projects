class RelationshipsController < ApplicationController

	def create
		user = User.find(params[:id])
		current_user.following << user 
		redirect_to '/posts'
	end

	def destroy
		user = User.find(params[:id])
		current_user.following.delete( user )
		redirect_to '/posts'
	end
end
