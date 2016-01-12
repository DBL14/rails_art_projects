class PostsController < ApplicationController
	# before_action :authenticate, only: [:index, :show]
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id, :title, :body, :url])
	end
end
