require "application_system_test_case"

class RoutesTest < ApplicationSystemTestCase
  setup do
    @route = routes(:one)
  end

  test "visiting the index" do
    visit routes_url
    assert_selector "h1", text: "Routes"
  end

  test "creating a Route" do
    visit routes_url
    click_on "New Route"

    fill_in "Begining hour", with: @route.begining_hour
    fill_in "Cost", with: @route.cost
    fill_in "Ending hour", with: @route.ending_hour
    fill_in "Link video", with: @route.link_video
    fill_in "Long description", with: @route.long_description
    fill_in "Name", with: @route.name
    fill_in "Short description", with: @route.short_description
    fill_in "Sites", with: @route.sites
    click_on "Create Route"

    assert_text "Route was successfully created"
    click_on "Back"
  end

  test "updating a Route" do
    visit routes_url
    click_on "Edit", match: :first

    fill_in "Begining hour", with: @route.begining_hour
    fill_in "Cost", with: @route.cost
    fill_in "Ending hour", with: @route.ending_hour
    fill_in "Link video", with: @route.link_video
    fill_in "Long description", with: @route.long_description
    fill_in "Name", with: @route.name
    fill_in "Short description", with: @route.short_description
    fill_in "Sites", with: @route.sites
    click_on "Update Route"

    assert_text "Route was successfully updated"
    click_on "Back"
  end

  test "destroying a Route" do
    visit routes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Route was successfully destroyed"
  end
end
