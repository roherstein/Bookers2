class UsersController < ApplicationController

  def show
   @book = Book.new
   @user = User.find(params[:id])
   @books = @user.books
  end

  def edit
    
  end

  def index
    @book = Book.new
    @user = User.find(current_user.id)
    @users = User.all
  end

  private

  def user_params
   params.require(:user).permit(:title,:body,:image)
  end

end
