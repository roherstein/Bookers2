class UsersController < ApplicationController

  def update
    user = User.find(params[:id])
    user.update(user_params)
    flash[:notice] = "You have updated user successfully."
    redirect_to user_path(user.id)
  end

  def show
   @book = Book.new
   @user = User.find(params[:id])
   @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @book = Book.new
    @user = User.find(current_user.id)
    @users = User.all
  end

  private

  def user_params
   params.require(:user).permit(:name,:introduction,:profile_image)
  end

end
