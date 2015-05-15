class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_id: params[:user_id])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.user_id
      redirect_to books_path
    else
      redirect_to sessions_new_path, notice: 'Login Failed!'
    end
    end


  def destroy
    session[:user_id] = nil
    redirect_to sessions_destroy_path, notice: "Logged out"
  end
end
