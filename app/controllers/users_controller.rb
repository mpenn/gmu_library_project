class UsersController < ApplicationController

  def new
   #@user = User.new
   @user = ["joe_test"]

  end


  def create
    @user = ["joe_test"]
    #@user = Book.new(book_params)
    if @user.save
      redirect_to @book, notice: "Welcome!"
    else
      render :new
    end
  end





end