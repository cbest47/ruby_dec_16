class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def new
    render 'new'
  end

  def create
    @user = User.new(user_params)
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    if @user.errors.any?
      redirect_to user_path, flash: {errors: @user.errors.full_messages}
    else
      redirect_to user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(params[:id],user_params)
    if @user.errors.any?
      redirect_to edit_user_path(@user), flash: {errors: @user.errors.full_messages}
    else
      redirect_to user_path(@user)
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email_address, :password)
  end



end
