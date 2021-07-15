class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

  def index
    user = current_user
    render :json => UserSerializer.new(user)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      token = JWT.encode({ :user_id => @user.id }, "secret") 
      render :json => { "token": token }
    else
      render :json => { msg: "Signup failed.." }
    end
  end

  def update
      if current_user.update(user_params)
        user = current_user
        render :json => UserSerializer.new(user)
      else
        render :json => { msg: "Update failed.." }
      end
  end
  

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
