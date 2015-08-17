class UsersController < ApplicationController
  def signup

  end

  def confirmation
    # puts '-----users#confirmation------'
    # puts user_params
    # puts '-----end users#confirmation------'

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
    else
      @message = 'User account exists or passwords do not match'
      render 'users/signup'
    end

  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)

  end





end
