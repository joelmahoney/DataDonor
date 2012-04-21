class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @active_auth_clients = AuthClient.all
    @user = User.find(params[:id])
  end
end
