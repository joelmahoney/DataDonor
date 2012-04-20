class AuthClientsController < ApplicationController
  # GET /auth_clients
  # GET /auth_clients.json
  def index
    @auth_clients = AuthClient.active

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auth_clients }
    end
  end

  # GET /auth_clients/1
  # GET /auth_clients/1.json
  def show
    @auth_client = AuthClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auth_client }
    end
  end

  # GET /auth_clients/new
  # GET /auth_clients/new.json
  def new
    @auth_client = AuthClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auth_client }
    end
  end

  # GET /auth_clients/1/edit
  def edit
    @auth_client = AuthClient.find(params[:id])
  end

  # POST /auth_clients
  # POST /auth_clients.json
  def create
    @auth_client = AuthClient.new(params[:auth_client])

    respond_to do |format|
      if @auth_client.save
        format.html { redirect_to @auth_client, notice: 'Auth client was successfully created.' }
        format.json { render json: @auth_client, status: :created, location: @auth_client }
      else
        format.html { render action: "new" }
        format.json { render json: @auth_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auth_clients/1
  # PUT /auth_clients/1.json
  def update
    @auth_client = AuthClient.find(params[:id])

    respond_to do |format|
      if @auth_client.update_attributes(params[:auth_client])
        format.html { redirect_to @auth_client, notice: 'Auth client was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auth_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auth_clients/1
  # DELETE /auth_clients/1.json
  def destroy
    @auth_client = AuthClient.find(params[:id])
    @auth_client.destroy

    respond_to do |format|
      format.html { redirect_to auth_clients_url }
      format.json { head :no_content }
    end
  end
end
