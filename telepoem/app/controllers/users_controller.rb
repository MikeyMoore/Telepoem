class UsersController < ApplicationController

def show
	@user = User.find(params[:user_id])
	@posts = Post.where(:user_id => @user.id)
end

end