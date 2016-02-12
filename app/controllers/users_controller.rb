class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to @user
  	else
  		render :new
  	end
  end

  def show
  	@user = User.find(current_user.id)
  end

  def edit
  end

  def update
  	@user = User.find(params[:id])
  	@user.update_attributes(user_params)
  	redirect_to user_path(@user)
  end

  def destroy
  end

  private
  	def user_params
  		params.require(:user).permit(:email, :password)
  	end
end
