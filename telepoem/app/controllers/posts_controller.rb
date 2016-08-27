class PostsController < ApplicationController
	def index
		if Post.all != nil
			@posts = Post.all
		else
			@posts = "pop"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		# raise params.inspect
		@post = Post.find(params[:format])
		@post.update(:content => params[:post][:content])
		# p "Here is the content"
		# p params[:post][:content]
		redirect_to root_path
	end
end
