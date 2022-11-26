class BooksController < ApplicationController
  before_action :correct_book, only: [:edit]

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "You have created book successfully."
      redirect_to book_path(@book.id)
    else
      @user = User.find(current_user.id)
      @books = Book.all
      render :index
    end
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "You have updated book successfully."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def index
    @book = Book.new
    @user = User.find(current_user.id)
    @books = Book.all
  end

  def show
   @book = Book.new
   @books = Book.all
   @book_to_show = Book.find(params[:id])
   @user = @book_to_show.user
  end

  def edit

  end

  private

  def book_params
    params.require(:book).permit(:title,:body,:image)
  end

  def correct_book
    @book = Book.find(params[:id])
    @user = @book.user
    redirect_to(book_path(@book.id)) unless @user.id == current_user.id
  end

end
