class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.save # returns truthy on success
      flash[:notice] = "User created successfully"
      session[:user_id] = @user.id

      redirect_to root_path
    else
      flash[:error] = "Could not create user"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


