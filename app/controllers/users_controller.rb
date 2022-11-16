class UsersController < ApplicationController
  def show
   @book = Book.new
  end

  def edit
  end

  def index
    @book = Book.all
  end

end
