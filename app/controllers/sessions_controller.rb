class SessionController < ApplicationController

  def create
    session[:current_user] = {:name => request.env['omniauth.auth'][:info][:name]}
    redirect_to root_path
  end

  def destroy
    session.delete(:current_user)
    redirect_to root_path
  end
end

