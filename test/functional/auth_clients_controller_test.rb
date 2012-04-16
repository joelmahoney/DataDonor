require 'test_helper'

class AuthClientsControllerTest < ActionController::TestCase
  setup do
    @auth_client = auth_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auth_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth_client" do
    assert_difference('AuthClient.count') do
      post :create, auth_client: { app_key: @auth_client.app_key, app_secret: @auth_client.app_secret, name: @auth_client.name }
    end

    assert_redirected_to auth_client_path(assigns(:auth_client))
  end

  test "should show auth_client" do
    get :show, id: @auth_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth_client
    assert_response :success
  end

  test "should update auth_client" do
    put :update, id: @auth_client, auth_client: { app_key: @auth_client.app_key, app_secret: @auth_client.app_secret, name: @auth_client.name }
    assert_redirected_to auth_client_path(assigns(:auth_client))
  end

  test "should destroy auth_client" do
    assert_difference('AuthClient.count', -1) do
      delete :destroy, id: @auth_client
    end

    assert_redirected_to auth_clients_path
  end
end
