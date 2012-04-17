class SessionsController < ApplicationController
  def create
    puts request.env['omniauth.auth']
    @user = User.find_or_create_from_omniauth(request.env['omniauth.auth'], current_user)
    session[:user_id] = @user.id
    redirect_to authentications_path
  end
  
  def destroy
    reset_session
    redirect_to root_url
  end
end
