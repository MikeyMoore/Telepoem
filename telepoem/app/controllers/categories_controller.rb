class CategoriesController < ApplicationController

	def show
		@posts = Post.where(:category_id => params[:category_id])
		render "posts/index.html.erb"
	end

end