class PostsController < ApplicationController
	def index
		if Posts.all != nil
			@posts = Posts.all
		else
			@posts = "pop"
		end
	end
end
