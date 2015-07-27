class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
  	user = User.find_by_username(params[:username_login])

  	# check if user exists in the database
  	if user && user.authenticate(params[:password_login])
  		session[:user_id] = user.id
  		redirect_to '/'
  	else
  		redirect_to '/login'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	reset_session
  	redirect_to '/login'
  end
end
