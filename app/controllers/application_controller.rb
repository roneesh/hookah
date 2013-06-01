class ApplicationController < ActionController::Base
  protect_from_forgery

  def ensure_logged_in
    unless session[:user_id]
      redirect_to sessions_new_url, notice: "Please log-in first."
    end
  end

  def ensure_correct_user_id
    if session[:user_id] != User.find_by_id(params[:id])
      flash[:message] = "You are not authorized to see/edit/delete any other User's user information."
      redirect_to user_url(session[:user_id])
    end
  end




end
