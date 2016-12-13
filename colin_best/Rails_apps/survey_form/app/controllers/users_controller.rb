class UsersController < ApplicationController
  def index
  end
  def create
    new_user = User.create( product_params )
    if !new_user.valid?
      flash[:error] = "You have errors!"
      redirect_to root_path 
    else
    redirect_to user_path(id: new_user.id)
    # redirect_to "/users/#{new_user.id}"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def product_params
      params.require(:user).permit(:name, :dojo, :favorite_language, :comment)
    end

end
