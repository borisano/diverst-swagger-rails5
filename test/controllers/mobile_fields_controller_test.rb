require 'test_helper'

class MobileFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mobile_field = mobile_fields(:one)
  end

  test "should get index" do
    get mobile_fields_url, as: :json
    assert_response :success
  end

  test "should create mobile_field" do
    assert_difference('MobileField.count') do
      post mobile_fields_url, params: { mobile_field: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show mobile_field" do
    get mobile_field_url(@mobile_field), as: :json
    assert_response :success
  end

  test "should update mobile_field" do
    patch mobile_field_url(@mobile_field), params: { mobile_field: {  } }, as: :json
    assert_response 200
  end

  test "should destroy mobile_field" do
    assert_difference('MobileField.count', -1) do
      delete mobile_field_url(@mobile_field), as: :json
    end

    assert_response 204
  end
end
