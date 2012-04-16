class UsersController < ApplicationController
  
  def show
    @active_auth_clients = AuthClient.all
    @user = User.find(params[:id])
  end
end
