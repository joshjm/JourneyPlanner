class SessionController < ApplicationController
  def new
    #just renders the new.html.erb 
  end

  def create
    # creates the session, ie logs in and stores the users creds. 
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts "user #{session[:user_id]} logged in"
      redirect_to root_path
    else
      flash[:error] = "User could not be logged in!"
      redirect_to login_path
    end
  end

  def destroy
    # removes/resets the session
    session[:user_id] = nil
    redirect_to login_path
  end
end
