require 'test_helper'

class RouteClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @route_client = route_clients(:one)
  end

  test "should get index" do
    get route_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_route_client_url
    assert_response :success
  end

  test "should create route_client" do
    assert_difference('RouteClient.count') do
      post route_clients_url, params: { route_client: { client_id: @route_client.client_id, route_id: @route_client.route_id } }
    end

    assert_redirected_to route_client_url(RouteClient.last)
  end

  test "should show route_client" do
    get route_client_url(@route_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_route_client_url(@route_client)
    assert_response :success
  end

  test "should update route_client" do
    patch route_client_url(@route_client), params: { route_client: { client_id: @route_client.client_id, route_id: @route_client.route_id } }
    assert_redirected_to route_client_url(@route_client)
  end

  test "should destroy route_client" do
    assert_difference('RouteClient.count', -1) do
      delete route_client_url(@route_client)
    end

    assert_redirected_to route_clients_url
  end
end
