class UsersController < ApplicationController

  def show 
    @user = User.find(params[:id])
  end

  def new
    @title = "Sign Up"
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      logger.debug "Yo signup: saved"
      sign_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      logger.debug "Yo signup: not saved"
      render 'new'
    end
  end

  private   

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
