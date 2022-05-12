class UsersController < ApplicationController
  def edit
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books

  end
  
  private

  def user_params
   params.require(:user).permit(:name,:profile_image)
  end

  
end
