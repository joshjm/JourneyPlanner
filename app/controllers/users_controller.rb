class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save # returns truthy on success
      flash[:notice] = "User created successfully"
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
