class AuthenticationsController < ApplicationController
  before_filter :authenticate_user!
  
  # GET /authentications
  # GET /authentications.json
  def index
    @active_auth_clients = AuthClient.active.order(:title)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @authentications }
    end
  end

  # GET /authentications/1
  # GET /authentications/1.json
  def show
    @authentication = Authentication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @authentication }
    end
  end

  # GET /authentications/new
  # GET /authentications/new.json
  def new
    @authentication = Authentication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @authentication }
    end
  end

  # GET /authentications/1/edit
  def edit
    @authentication = Authentication.find(params[:id])
  end

  def create
    auth_client = AuthClient.find_by_name(data['provider'])
    data = request.env['omniauth.auth']
    token = data['credentials']['token']
    secret = data['credentials']['secret']

    respond_to do |format|
      if current_user.authentications.create(:auth_client_id => auth_client.try(:id), :uid => data['uid'], :token => token, :secret => secret, :omniauth_data => data)
        client = OAuth2::Client.new(ENV["#{auth_client.name.upcase}_ID"], ENV["#{auth_client.name.upcase}_SECRET"], :site => auth_client.api_url)
        client.auth_code.authorize_url(:redirect_uri => 'http://localhost:8080/oauth2/callback')
        format.html { redirect_to authentications_path, notice: "#{auth_client.title} was successfully linked." }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /authentications/1
  # PUT /authentications/1.json
  def update
    @authentication = Authentication.find(params[:id])

    respond_to do |format|
      if @authentication.update_attributes(params[:authentication])
        format.html { redirect_to @authentication, notice: 'Authentication was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @authentication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @authentication = Authentication.find(params[:id])
    @authentication.destroy

    respond_to do |format|
      format.html { redirect_to authentications_url }
      format.json { head :no_content }
    end
  end
end
