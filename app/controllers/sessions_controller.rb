class SessionsController < ApplicationController
  def new
  	if current_user
  		redirect_to user_path
  	else
  		render :new
  end

  def create
  	@ user = User.confirm(user_params)

  	if @user
  		login(@user)
  		redirect_to @user
  	else
  		redirect_to new_user_path
  	end
  end

  def destroy
  	session.delete(:user_id)
  	@current_user = nil
  	redirect_to static_pages_home_path
  end
end
