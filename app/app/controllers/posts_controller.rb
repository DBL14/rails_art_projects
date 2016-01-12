class PostsController < ApplicationController
	# before_action :authenticate, only: [:index, :show]
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id, :title, :body, :url])
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(params[:id, :title, :body, :url])
		if @post.save
			redirect_to post_path(@post),
					notice: "You successfully created a new post"
		else
			render :new, alert: "Post creation failed"
		end
	end
end
