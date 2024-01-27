class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
  end

  def edit
  end

  def update
    @user.update(params[:user])
  end

  def destroy
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address, :email, :phone_number, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
