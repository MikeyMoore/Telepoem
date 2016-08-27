class PostsController < ApplicationController
	def index
		# p "category id"
		# p params[:category_id]

		# if params[:category_id] != nil
		# 	@category = Category.find(params[:category_id])
		# 	p @category.name
		# end

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
		@post = Post.find(params[:format])
		@post.update(:content => params[:post][:content])
		render "show"
	end
end
