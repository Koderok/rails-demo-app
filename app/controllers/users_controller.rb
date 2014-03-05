class UsersController < ApplicationController
  def new
    @title = "Sign Up"
  end

  def create
    User.create(user_params)
      # @user = User.new(user_params)
      # if @user.save
      #   # Handle a successful save.
      # else
      #   render 'new'
      # end
    end

  private   

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
