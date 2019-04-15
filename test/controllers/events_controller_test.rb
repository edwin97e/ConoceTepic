require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { begining_date: @event.begining_date, begining_hour: @event.begining_hour, cost: @event.cost, ending_date: @event.ending_date, ending_hour: @event.ending_hour, latitude: @event.latitude, link_video: @event.link_video, location: @event.location, long_description: @event.long_description, longitude: @event.longitude, name: @event.name, short_description: @event.short_description, state: @event.state } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { begining_date: @event.begining_date, begining_hour: @event.begining_hour, cost: @event.cost, ending_date: @event.ending_date, ending_hour: @event.ending_hour, latitude: @event.latitude, link_video: @event.link_video, location: @event.location, long_description: @event.long_description, longitude: @event.longitude, name: @event.name, short_description: @event.short_description, state: @event.state } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
