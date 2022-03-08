class SessionsController < ApplicationController
  def new
    # rendering the view with the login form
  end
  
  # logging in by adding the user_id in the session hash 
  # after making sure the username
  #  and password are correct.
  def create
    user = User.authenticate(params[:username], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to home_path, notice: "Logged in!"
    else
      flash.now.alert = "Username and/or password is invalid"
      render "new"
    end
  end
  
  # logging out: setting the user id to nil in the session hash
  def destroy
    session[:user_id] = nil
    redirect_to home_path, notice: "Logged out!"
  end
end