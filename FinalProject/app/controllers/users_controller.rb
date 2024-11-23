class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'User Created'
    else 
      render :new, alert: 'Error saving'
    end
  end

  def email
    @user = User.email
  end

  def name
    @user = User.name
  end

  def role
    @user = User.role
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :role)
  end
end

