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
end
