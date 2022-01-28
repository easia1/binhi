class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		# @plant_history = Plant.find
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(current_user)
		end
	end

	def edit
		@user = User.find(params[:id])
	end

  def update
    @user = User.find(params[:id])
	if @user.profile_image?
		@user.profile_image.file.delete
	end
	
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
	end

	private
	def user_params
		params.require(:user).permit(:name, :username, :occupation, :profile_image)
	end
end
