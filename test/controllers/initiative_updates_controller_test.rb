require 'test_helper'

class InitiativeUpdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_update = initiative_updates(:one)
  end

  test "should get index" do
    get initiative_updates_url, as: :json
    assert_response :success
  end

  test "should create initiative_update" do
    assert_difference('InitiativeUpdate.count') do
      post initiative_updates_url, params: { initiative_update: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_update" do
    get initiative_update_url(@initiative_update), as: :json
    assert_response :success
  end

  test "should update initiative_update" do
    patch initiative_update_url(@initiative_update), params: { initiative_update: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_update" do
    assert_difference('InitiativeUpdate.count', -1) do
      delete initiative_update_url(@initiative_update), as: :json
    end

    assert_response 204
  end
end
