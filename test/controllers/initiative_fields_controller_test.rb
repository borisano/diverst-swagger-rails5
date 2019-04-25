require 'test_helper'

class InitiativeFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @initiative_field = initiative_fields(:one)
  end

  test "should get index" do
    get initiative_fields_url, as: :json
    assert_response :success
  end

  test "should create initiative_field" do
    assert_difference('InitiativeField.count') do
      post initiative_fields_url, params: { initiative_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show initiative_field" do
    get initiative_field_url(@initiative_field), as: :json
    assert_response :success
  end

  test "should update initiative_field" do
    patch initiative_field_url(@initiative_field), params: { initiative_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy initiative_field" do
    assert_difference('InitiativeField.count', -1) do
      delete initiative_field_url(@initiative_field), as: :json
    end

    assert_response 204
  end
end
