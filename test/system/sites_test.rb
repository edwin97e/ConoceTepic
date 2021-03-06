require "application_system_test_case"

class SitesTest < ApplicationSystemTestCase
  setup do
    @site = sites(:one)
  end

  test "visiting the index" do
    visit sites_url
    assert_selector "h1", text: "Sites"
  end

  test "creating a Site" do
    visit sites_url
    click_on "New Site"

    fill_in "Begining hour", with: @site.begining_hour
    fill_in "Cost", with: @site.cost
    fill_in "Ending hour", with: @site.ending_hour
    fill_in "Latitude", with: @site.latitude
    fill_in "Link video", with: @site.link_video
    fill_in "Location", with: @site.location
    fill_in "Long description", with: @site.long_description
    fill_in "Longitude", with: @site.longitude
    fill_in "Name", with: @site.name
    fill_in "Short description", with: @site.short_description
    click_on "Create Site"

    assert_text "Site was successfully created"
    click_on "Back"
  end

  test "updating a Site" do
    visit sites_url
    click_on "Edit", match: :first

    fill_in "Begining hour", with: @site.begining_hour
    fill_in "Cost", with: @site.cost
    fill_in "Ending hour", with: @site.ending_hour
    fill_in "Latitude", with: @site.latitude
    fill_in "Link video", with: @site.link_video
    fill_in "Location", with: @site.location
    fill_in "Long description", with: @site.long_description
    fill_in "Longitude", with: @site.longitude
    fill_in "Name", with: @site.name
    fill_in "Short description", with: @site.short_description
    click_on "Update Site"

    assert_text "Site was successfully updated"
    click_on "Back"
  end

  test "destroying a Site" do
    visit sites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Site was successfully destroyed"
  end
end
