class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.save
  		flash[:notice] = "情報を更新しました。"
  		redirect_to user_path(@user.id)
  	else
  		flash[:alert] = "エラー"
  		render :edit
  	end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :email, :password, :profile_image)
  end
end
