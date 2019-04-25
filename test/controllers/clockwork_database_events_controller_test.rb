require 'test_helper'

class ClockworkDatabaseEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clockwork_database_event = clockwork_database_events(:one)
  end

  test "should get index" do
    get clockwork_database_events_url, as: :json
    assert_response :success
  end

  test "should create clockwork_database_event" do
    assert_difference('ClockworkDatabaseEvent.count') do
      post clockwork_database_events_url, params: { clockwork_database_event: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show clockwork_database_event" do
    get clockwork_database_event_url(@clockwork_database_event), as: :json
    assert_response :success
  end

  test "should update clockwork_database_event" do
    patch clockwork_database_event_url(@clockwork_database_event), params: { clockwork_database_event: {  } }, as: :json
    assert_response 200
  end

  test "should destroy clockwork_database_event" do
    assert_difference('ClockworkDatabaseEvent.count', -1) do
      delete clockwork_database_event_url(@clockwork_database_event), as: :json
    end

    assert_response 204
  end
end
