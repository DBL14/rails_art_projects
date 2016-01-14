class PostsController < ApplicationController
	before_action :authenticate, only: [:index, :show]
	
	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		# binding.pry
		@post = current_user.posts.new(params.require(:post).permit(:title, :body, :url))
		if @post.save
			redirect_to post_path(@post), notice: "You successfully created a new post"
		else
			render :new, alert: "Post creation failed"
		end
		
  	end

  	# private
  	# 	def post_params
  	# 		params.require(:post).permit(:title, :body, :url)
  	# 	end
end
# (params[:id, :title, :body, :url])