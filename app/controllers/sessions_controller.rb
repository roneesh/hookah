class SessionsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_url(@user.id), notice: 'Welcome back.'
    else
      flash[:message] = "Invalid login e-mail or password"
      redirect_to userlogin_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to sessions_new_url, notice: "You are now logged out."
  end

end
