require "application_system_test_case"

class RouteClientsTest < ApplicationSystemTestCase
  setup do
    @route_client = route_clients(:one)
  end

  test "visiting the index" do
    visit route_clients_url
    assert_selector "h1", text: "Route Clients"
  end

  test "creating a Route client" do
    visit route_clients_url
    click_on "New Route Client"

    fill_in "Client", with: @route_client.client_id
    fill_in "Route", with: @route_client.route_id
    click_on "Create Route client"

    assert_text "Route client was successfully created"
    click_on "Back"
  end

  test "updating a Route client" do
    visit route_clients_url
    click_on "Edit", match: :first

    fill_in "Client", with: @route_client.client_id
    fill_in "Route", with: @route_client.route_id
    click_on "Update Route client"

    assert_text "Route client was successfully updated"
    click_on "Back"
  end

  test "destroying a Route client" do
    visit route_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Route client was successfully destroyed"
  end
end
