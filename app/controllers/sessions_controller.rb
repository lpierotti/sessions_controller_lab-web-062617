class SessionsController < ApplicationController
  
  def new
  end

  def create
  	session[:name] = params[:name]
  	if session[:name] != nil && session[:name] != ""
  		redirect_to root_path
  	else
  		redirect_to sessions_new_path
  	end
  end

  def destroy
  	session.delete :name
  	redirect_to root_path
  end
end
