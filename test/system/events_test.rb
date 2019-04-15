require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Begining date", with: @event.begining_date
    fill_in "Begining hour", with: @event.begining_hour
    fill_in "Cost", with: @event.cost
    fill_in "Ending date", with: @event.ending_date
    fill_in "Ending hour", with: @event.ending_hour
    fill_in "Latitude", with: @event.latitude
    fill_in "Link video", with: @event.link_video
    fill_in "Location", with: @event.location
    fill_in "Long description", with: @event.long_description
    fill_in "Longitude", with: @event.longitude
    fill_in "Name", with: @event.name
    fill_in "Short description", with: @event.short_description
    fill_in "State", with: @event.state
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Begining date", with: @event.begining_date
    fill_in "Begining hour", with: @event.begining_hour
    fill_in "Cost", with: @event.cost
    fill_in "Ending date", with: @event.ending_date
    fill_in "Ending hour", with: @event.ending_hour
    fill_in "Latitude", with: @event.latitude
    fill_in "Link video", with: @event.link_video
    fill_in "Location", with: @event.location
    fill_in "Long description", with: @event.long_description
    fill_in "Longitude", with: @event.longitude
    fill_in "Name", with: @event.name
    fill_in "Short description", with: @event.short_description
    fill_in "State", with: @event.state
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
