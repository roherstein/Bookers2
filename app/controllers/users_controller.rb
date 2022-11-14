class UsersController < ApplicationController
  def show
   

  end

  def edit
  end

  def index
    @book = Book.all
  end

end
